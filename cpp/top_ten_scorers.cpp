#include <iostream>
#include <fstream>
#include <utility>
#include <vector>
#include <string>
#include <regex>

using namespace std;

struct Player {
    string team;
    string name;
    int games;
    int points;
    Player(string team, string name, int games, int points): team(team), name(name), games(games), points(points) {}
};

void printTopTenScorers(vector<Player> players) {

}

vector<Player> parseInputFile(vector<string> input) {
    size_t pos = 0;
    string line;
    regex delimiter("\\,");
    vector<string> tokens;
    vector<Player> parsedPlayers;

    for (int i = 0; i < input.size(); i++) {
        line = input[i];
        vector<string> tokens(sregex_token_iterator(line.begin(), line.end(), delimiter, -1),
                    sregex_token_iterator());
        Player newPlayer(tokens[0], tokens[1], stoi(tokens[2]), stoi(tokens[3]));
        parsedPlayers.push_back(newPlayer);
    }
    
    return parsedPlayers;
}

int main() {
    ifstream file("../test/wnba_input");
    string line;
    vector<string> lines;
    vector<Player> parsedPlayers;

    if (file.is_open()) {
        while (getline(file, line)) {
            lines.push_back(line);
        }
        file.close();
    }

    printTopTenScorers(parseInputFile(lines));
}