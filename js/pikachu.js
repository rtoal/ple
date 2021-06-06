window.addEventListener("load", async () => {
  const picture = document.createElement("img")
  const url = "https://pokeapi.co/api/v2/pokemon/pikachu"
  const response = await fetch(url)
  const pokemon = await response.json()
  picture.src = pokemon.sprites.front_default
  document.body.appendChild(picture)
})
