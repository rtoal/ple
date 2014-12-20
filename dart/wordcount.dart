import 'dart:io';
import 'dart:convert';
import 'dart:collection';

final words = new SplayTreeMap<String, int>();

void main() {
  stdin.transform(UTF8.decoder).transform(const LineSplitter()).listen(addLines, onDone: printWords); 
}

void addLines(String data) {
  data.split(new RegExp(r'\s')).forEach((word) =>
      words[word] = words.putIfAbsent(word, () => 0) + 1);
}

void printWords() {
  words.forEach((k, v) => print('$k $v'));
}
