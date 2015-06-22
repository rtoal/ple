let a = 1, b = 2;

function main() {
  console.log(a);    // undefined, local `a` in scope
  console.log(b);    // 2, since its the global b we see

  if (true) {
    var a = 100;     // scoped to whole function!
    let b = 200;     // scoped only inside this block
    let c = 300;     // scoped only inside this block
  }
  console.log(a);    // 100, since it's been initialized
  console.log(b);    // 2, since we see the global b again

  try {console.log(c);} catch (e) {console.log('Block scope!')}
}

main()
