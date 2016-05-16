for (let c = 1; c <= 40; c++) {
  for (let b = 1; b < c; b++) {
    for (let a = 1; a < b; a++) {
      if (a * a + b * b === c * c) {
        console.log(`${a}, ${b}, ${c}`);
      }
    }
  }
}
