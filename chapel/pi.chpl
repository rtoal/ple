use Random;
use Time;

config const trials = 10_000_000;

proc approximatePi(): real {
  writeln("Using up to ", here.maxTaskPar, " worker threads");

  var hits: int = 0;

  forall i in 1..trials with (
    + reduce hits, var randStream = new randomStream(real)) {
      const x = randStream.next();
      const y = randStream.next();
      if x*x + y*y < 1.0 then
        hits += 1;
    }

  return 4.0 * hits / trials;
}

var timer = new stopwatch();
timer.start();
const estimate = approximatePi();
timer.stop();

writeln("pi is approx ", estimate, " (", timer.elapsed(), " secs)");
