var t = require('./tempo.js');
var apiKeys = [
  '485DD563C409A3C05626F2FCC039B8D3', // John Winstead
  // '', // raf
  // '', // mike
  'DE6988BFB0B3CB6F332F548F96DE0F57', // Jessie
  'B70D942616BF83489CEF0BCB469CA167' // awatemonosan2
];
var Dota2Api = require('./node-valve-api/index');
function rDota2Api() {
  return Dota2Api.create(apiKeys[Math.floor(Math.random()*apiKeys.length)]);
}

var admin = require("firebase-admin");
var serviceAccount = require('./serviceAccountKey.json');
admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
  databaseURL: "https://narif-20526.firebaseio.com"
});
var database = admin.database();
// database.ref("/").set({});
// return;
var matchesRef = "/matches/";
var playerMatchDataRef = "/playerMatchData/";
var playersRef = "/players/";

// var nerif =  new (require('/nerif.js'))();

var scrapeQueue = [];
var matchCount;
startScrape();

function startScrape(){
  if(scrapeQueue.length == 0){
    scrapeQueue.push({});
    process.stdout.write("\n");
    console.log('found ' +matchCount+ ' matches');
    console.log("Scraping new matches");
    matchCount = 0;
  }
  process.stdout.write("√");
  scrapeMatches(scrapeQueue.shift());
}

function scrapeMatches(options) {
  rDota2Api().getMatchHistory({
    game_mode: 1,
    start_at_match_id: options.startAtMatchId
  }).then((response) => {
    var matches = response.result.matches;
    matchCount+=matches.length;
    if(matches.length>0){
      processMatches(matches,  options, (existing, oldestStartTime, lowestMatchId)=>{
        var newOptions = {};
        merge(newOptions, options);
        newOptions.startAtMatchId = lowestMatchId-1;
        scrapeQueue.unshift(newOptions);
      });
    }
    startScrape();
  }).catch((errorResponseStatusText)=>{
    process.stdout.write("H");
    setTimeout(()=>{
      scrapeMatches(options);
    }, 5*t.seconds*Math.random());
  });
}

function processMatches(matches, options, callback){
  var oldestStartTime = matches[0].start_time *= t.seconds;
  var lowestMatchId = matches[0].match_id;

  var promises = [];

  for(var index in matches){
    var match = matches[index];
    match.start_time *= t.seconds;
    // Capturing both just to be safe. I cannot gurentee (Without research) that the oldest match will have the lowest matchId
    //  if they are not the same match then I run the risk of processing a match twice (costly if frequent)
    oldestStartTime = oldestStartTime < match.start_time ? oldestStartTime : match.start_time;
    lowestMatchId = lowestMatchId < match.match_id ? lowestMatchId : match.match_id;
    var promise = new Promise((resolve, reject)=>{
      var matchRef = database.ref(matchesRef + match.match_id);

      matchRef.once('value', (snapshot)=>{
        var value = snapshot.val();
        if(value != null){
          reject();
        }else{
          mergeMatchDetails(match, ()=>{
            matchRef.update(match);
            matchRef.once('value', ()=>{
              for(var index in match.players){
                var playerMatchData = match.players[index];
                playerMatchData.match_id = match.match_id;

                if(!options.dontScrapePlayers){
                  var accountID = playerMatchData.account_id;
                  if(accountID){
                    var playerRef = database.ref(playersRef + accountID);
                    playerRef.once('value', (snapshot)=>{
                      var player = snapshot.val();
                      if(player==null){
                        console.log(accountID);
                        playerRef.update({account_id: accountID});
                        scrapeQueue.push({account_id: accountID, dontScrapePlayers: true});
                      }
                    });
                  }
                }

                database.ref(playerMatchDataRef).push(playerMatchData).once('value', ()=>{
                  resolve();
                });
              }
            });
          });
        }
      });
    });
    promises.push(promise);
  }
  Promise.all(promises).then(()=>{
    callback(false, oldestStartTime, lowestMatchId);
  }).catch((error)=>{
    callback(true, oldestStartTime, lowestMatchId);
  });
}

function mergeMatchDetails(match, callback){
  rDota2Api().getMatchDetails({
    match_id: match.match_id
  }).then((response)=>{
    var matchDetails = response.result;
    merge(match,matchDetails);
    for(var index in match.players){
      merge(match.players[index], matchDetails.players[index]);
    }
    callback();
  }).catch(()=>{
    process.stdout.write("D");
    setTimeout(()=>{
      mergeMatchDetails(match, callback);
    }, 10*t.second*Math.random());
  });
}

function merge(target, other) {
  for(var key in other) {
    target[key] = target[key] || other[key];
  }
}
