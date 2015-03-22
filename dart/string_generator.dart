library string_generator;

var counters = {};
String generateString(String prefix) {
  var cur = counters.putIfAbsent(prefix, () => 0);
  counters[prefix] = cur + 1; 
  return "$prefix${counters[prefix]}";
}
