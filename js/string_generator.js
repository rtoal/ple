let counters = Object.create(null);

export default function (prefix) {
  counters[prefix] = (counters[prefix] || 0) + 1;
  return prefix + counters[prefix];
}
