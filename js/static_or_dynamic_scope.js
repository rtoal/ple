var x = 'GLOBAL';
function second() {console.log(x)}
function first() {var x = 'FIRST'; second();};
first();
