!SLIDE countdown bullets

### Battleship

* Domain Specific Language
* Test Driven Development
* Limits the use of "Primitives"
* Limit Branching logic
* Limits the use of "Primitives" and "Collections"
* ?

<div id="countdown_dashboard" style="margin-left: 372px; width: 350px; height:150px;">

  <div class="dash minutes_dash">
    <span class="dash_title">minutes</span>
    <div class="digit">0</div>
    <div class="digit">0</div>
  </div>

  <div class="dash seconds_dash">
    <span class="dash_title">seconds</span>
    <div class="digit">0</div>
    <div class="digit">0</div>
  </div>

</div>

<div style="margin: 0px auto; width: 200px;">
  <button class="button" onclick="firstTimer.start();">
    START!
  </button>
</div>

<script>
  $(document).ready(function () {
    window.firstTimer = new ExerciseTimer("#countdown_dashboard");
  });
</script>