pad = (n) -> "#{n}".padStart(2, "0")
for i from 0 to 10
  t = Math.floor (i + 0.5) * 43200 / 11
  [h, m, s] = [(Math.floor t / 3600), (Math.floor t / 60) % 60, t % 60]
  console.log "#{pad(h || 12)}:#{pad m}:#{pad s}"