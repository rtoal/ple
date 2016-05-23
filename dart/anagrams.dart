import 'dart:io';

void main(List<String> args) {
  if (args.length != 1) {
    stderr.write('Please supply only one argument\n');
    exit(1);
  }
  var word = args[0];
  generatePermutations(word.split(''));
}

void generatePermutations(List<String> word, [int index]) {
  if (index == 0) {
    print(word.join(''));
  } else {
    if (index == null) {
      index = word.length - 1;
    }
    for (var i = 0; i < index; i++) {
      generatePermutations(word, index - 1);
      var swap = (list, left, right) {
        var saved = list[left];
        list[left] = list[right];
        list[right] = saved;
      };
      swap(word, index % 2 == 0 ? 0 : i, index);
    }
    generatePermutations(word, index - 1);
  }
}
