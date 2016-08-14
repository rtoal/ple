import 'dart:io';
import 'dart:convert';
import 'dart:collection';

final words = new SplayTreeMap<String, int>();

void main() {
  stdin.transform(UTF8.decoder)
    .transform(const LineSplitter())
    .listen(addLines, onDone: printWords);
}

void addLines(String data) {
  data.toLowerCase().split(new RegExp(r"[^a-z'\w]+")).forEach((word) {
    if (word.length > 0) {
      words[word] = words.putIfAbsent(word, () => 0) + 1;
    }
  });
}

void printWords() {
  words.forEach((k, v) => print('$k $v'));
}
