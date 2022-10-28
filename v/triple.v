fn main() {
     for c:=1; c <= 40; c += 1 {
          for b:=1; b < c; b += 1 {
                for a:=1; a < b; a += 1 {
                     if a * a + b * b == c * c {
                          println('$a, $b, $c')
                     }     
                }
          }
     } 

}
