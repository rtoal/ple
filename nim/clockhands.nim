import std/strformat

for i in 0..10:
  let t = (43200 * i + 21600) div 11
  let h = t div 3600
  let m = (t div 60) mod 60
  let s = t mod 60
  echo &"{(if h == 0: 12 else: h):02}:{m:02}:{s:02}"