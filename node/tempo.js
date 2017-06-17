module.exports = (()=>{
  return new Tempo();

  function Tempo(){
    this.tick   = this.ticks   =    1;
    this.second = this.seconds = 1000*this.ticks;
    this.minute = this.minutes =   60*this.seconds;
    this.hour   = this.hours   =   60*this.minutes;
    this.day    = this.days    =   24*this.hours;
    this.week   = this.weeks   =    7*this.days;
    this.month  = this.months  =   30*this.days;
    this.year   = this.years   =  365*this.days;
  }
})();