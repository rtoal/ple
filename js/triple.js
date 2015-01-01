for (var c = 1; c <= 50; c++) {
    for (var b = 1; b < c; b++) {
        for (var a = 1; a < b; a++) {
            if (a * a + b * b == c * c) {
                console.log('%d, %d, %d', a, b, c);
            }
        }
    }
}