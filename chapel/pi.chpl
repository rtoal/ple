use Random;
use Time;

config const totalTrials = 10_000_000;

proc approximatePi(): real {
  writeln("Using up to ", here.maxTaskPar, " worker threads");

  var hits: int = 0;

  forall i in 1..totalTrials
    with (+ reduce hits, var rng = new randomStream(real)) {

      const x = rng.next();
      const y = rng.next();

      if x*x + y*y < 1.0 then
        hits += 1;
    }

  return 4.0 * hits / totalTrials;
}

var timer = new stopwatch();
timer.start();
const estimate = approximatePi();
timer.stop();

writeln("π ≈ ", estimate, " found in ", timer.elapsed(), " seconds");
