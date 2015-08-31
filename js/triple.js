for (let c = 1; c <= 50; c++) {
  for (let b = 1; b < c; b++) {
    for (let a = 1; a < b; a++) {
      if (a * a + b * b === c * c) {
        console.log('%d, %d, %d', a, b, c);
      }
    }
  }
}
