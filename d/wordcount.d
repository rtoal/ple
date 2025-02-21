import std.stdio;
import std.algorithm;
import std.regex;
import std.string;
import std.format;

void main() {
    int[string] word_count;
    
    string line;
    while ((line = readln()) !is null) {
        line = chomp(line);
        auto words = matchAll(line, regex(r"[\p{L}'’]+"));
        foreach (match; words) {
            word_count[match.hit.toLower()]++;
        }
    }

    foreach (word; sort(word_count.keys)) {
        writeln(format!"%s %s"(word, word_count[word]));
    }
}
