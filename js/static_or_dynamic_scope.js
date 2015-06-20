let x = 'GLOBAL';
function second() {console.log(x)}
function first() {let x = 'FIRST'; second();};
first();
