for i from 0 to 10
  new Date(Math.floor((43200000 * i + 21600000) / 11)).
  toISOString().substring(11, 19).
  replace(/^00/, '12') |> console.log