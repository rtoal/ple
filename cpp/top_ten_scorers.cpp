#include <iostream>
#include <fstream>
#include <utility>
#include <vector>
#include <string>

using namespace std;

struct Player {
    string team;
    string name;
    int games;
    int points;
    Player(string team, string name, int games, int points): team(team), name(name), games(games), points(points) {}
};

void printTopTenScorers(vector<vector<string, int>> players) {

}

vector<Player> parseInputFile(vector<string> input) {
    size_t pos = 0;
    string token;
    vector<Player> parsedPlayers;

    for (int i = 0; i < input.size(); i++) {
        string line = input[i];

        for (int j = 0; j < 4; j++) {
            pos = line.find(",");
            token = line.substr(0, pos);
            cout << token << endl;
            line.erase(0, pos + 1);
        }
    }

    return parsedPlayers;
}

string getToken(string line) {
    size_t pos = line.find(",");
    return line.substr(0, pos);
}

int main() {
    ifstream file("../test/wnba_input");
    string line;
    vector<string> lines;
    vector<Player> parsedPlayers;

    if (file.is_open()) {
        while (getline(file, line)) {
            cout << line << '\n';
            lines.push_back(line);
        }
        file.close();
    }

    parsedPlayers = parseInputFile(lines);
}