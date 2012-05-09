ExerciseTimer = (function() {
  
  function ExerciseTimer(identifier) {
    var identifier = identifier;
    var countDownElement = $(identifier);
    countDownElement.countDown({
      targetOffset: {
         'day':      0,
         'month':    0,
         'year':     0,
         'hour':     0,
         'min':      45,
         'sec':      0
      }
    });
    
    countDownElement.stopCountDown();
    
    this.stop = function() {
      countDownElement.stopCountDown();
    }

    this.start = function() {
      countDownElement.startCountDown();
    }
    
  }
  
  return ExerciseTimer;
})();
