let possibilites = 1;
for (let i = 53; i >= 48; i--) {
    possibilites *= i;
}
console.log('The odds are %d to 1', possibilites);
