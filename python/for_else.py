places = ["Inside the Sun", "Mammoth Mountain"]

def good(place):
    return place.startswith("M")

for place in places:
    if good(place):
        print(f"Ah, a good place: {place}")
        break
else:
    print("No good places for you")
