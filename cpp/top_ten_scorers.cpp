#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <sstream>
#include <algorithm>

struct Player {
    std::string name;
    std::string team;
    double ppg;
};

int main() {
    std::vector<Player> players;

    std::string line;
    while (std::getline(std::cin, line)) {
        std::stringstream ss(line);
        std::string team, name, games, points;
        std::getline(ss, team, ',');
        std::getline(ss, name, ',');
        std::getline(ss, games, ',');
        std::getline(ss, points, ',');
        int gamesInt = std::stoi(games);
        if (gamesInt >= 15) {
            double ppg = static_cast<double>(std::stoi(points)) / gamesInt;
            players.push_back({name, team, ppg});
        }
    }

    // Sort and print the top 10 players by PPG
    std::partial_sort(
        players.begin(), players.begin() + 10, players.end(), 
        [](const Player& a, const Player& b) { return a.ppg > b.ppg; }
    );

    for (const Player& player : std::vector<Player>(players.begin(), players.begin() + 10)) {
        std::cout 
            << std::left << std::setw(22) << player.name
            << std::left << std::setw(4) << player.team
            << std::right << std::fixed << std::setprecision(2) << std::setw(8) << player.ppg
             << std::endl;
    }
    return 0;
}
