var counters = Object.create(null);

module.exports = function (prefix) {
  counters[prefix] = (counters[prefix] || 0) + 1;
  return prefix + counters[prefix];
}
