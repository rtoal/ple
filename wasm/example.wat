(module
  (import "env" "print"
    (func $print (param f64)))
  (import "env" "pow"
    (func $pow (param f64) (param f64) (result f64)))

  (func $prev (param $x f64) (result f64)
    (local.get $x) (f64.const 1) (f64.sub)
  )

  (func (export "main")
    (local $x f64) (f64.const 5) (local.set $x)
    (local.get $x) (f64.const 21) (call $pow)
    (call $prev) (call $print)
  )
)
