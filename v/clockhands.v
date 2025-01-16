fn main() {
    for i in 0 .. 11 {
        t := int((i + 0.5) * 43200 / 11)
        h := int(t / 3600)
        m := t % 3600
        println('${(if h == 0 { 12 } else { h }):02}:${int(m / 60):02}:${(m % 60):02}')
    } 
}
