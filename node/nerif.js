const request = require('request');

return ((nerrifUrl)=>{
  nerrifUrl = nerrifUrl || "http://l337.info/api/";

  function hasMatch(matchID, callback){
    request.get({
      url: nerrifUrl + "match/" + matchID, 
      callback: (response)=>{
        if(callback!=null){ callback(response); }
      }
    });
  }

  function submitMatch(matchID, matchData, callback){
    request.post({
      url: nerrifUrl + "match/" + matchID, 
      json: { match: matchData }
      callback: (response)=>{
        if(callback!=null){ callback(response); }
      }
    });
  }

  this.hasMatch       = hasMatch;
  this.submitMatch   = submitMatch;
})()