let capitals = [
    "Netherlands": "Amsterdam",
    "Aruba": "Oranjestad",
    "Cura\u{e7}ao": "Willemstad",
    "Sint Maarten": "Philipsburg",
]

assert(capitals.count == 4)
assert(capitals.keys.contains("Aruba"))
assert(capitals.values.sorted().last == "Willemstad")

for (country, capital) in capitals {
    print("The capital of \(country) is \(capital).")
}
