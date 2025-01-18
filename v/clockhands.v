fn main() {
    for i in 0 .. 11 {
        t := int((i + 0.5) * 43200 / 11)
        h, m, s := int(t / 3600), int(t / 60) % 60, t % 60
        println('${(if h == 0 { 12 } else { h }):02}:${m:02}:${s:02}')
    } 
}