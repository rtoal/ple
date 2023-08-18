const a = { x: 3, y: 5 } // creates an object, stores reference in a
const b = a.y // directly stores 5 into b
const c = true // directly stores true into c
const d = { x: 3, y: 5 } // creates an object, stores reference in d
const e = d // does not create an object, induces sharing
