function possibilities(total, picks) {
  let result = 1;
  for (let i = 53; i >= 48; i--) {
    result *= i;
  }
  return result;
}

function report(total, picks, locale='') {
  console.log('The odds are %s to 1', possibilities(total, picks).toLocaleString(locale));
}

report(53, 6);
report(49, 5, 'de-DE');
report(49, 5, 'ar-EG');

