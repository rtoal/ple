import Foundation

func fetchPokemonInfo() async {
    let url = try URL(string: "https://pokeapi.co/api/v2/pokemon/pikachu")!
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        print(json)
    } catch {
        print("Error: \(error)")
    }
}

await fetchPokemonInfo()
