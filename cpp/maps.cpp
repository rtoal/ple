#include <iostream>
#include <map>

int main() {
  std::map<std::string, std::string> capitals = {
    {"Netherlands", "Amsterdam"},
    {"Aruba", "Oranjestad"},
    {"Cura\u00e7ao", "Willemstad"},
    {"Sint Maarten", "Philipsburg"},
  };
  for (auto& c: capitals) {
    std::cout << c.first << "'s capital is " << c.second << '\n';
  }
}
