import ballerina/io;
import ballerina/regex;

public function main(string[] input) {
    map<int?> words = {};
    foreach string line in input {
        regex:split(line.toLowerAscii(), "[0-9]|[^\\w']").filter(s => s.length() != 0).forEach(function (string word) {
            if words.hasKey(word) {
                words[word] = words[word] + 1;
            } else {
                words[word] = 1;
            }
        });
    }
    foreach [string, int?] [word, freq] in words.entries().toArray().sort() {
        io:println(`${word} ${freq}`);
    }
}