fn main() {
    for i in 0 .. 11 {
        t := (43200 * i + 21600) / 11
        h, m, s := t / 3600, t / 60 % 60, t % 60
        println('${(if h == 0 { 12 } else { h }):02}:${m:02}:${s:02}')
    } 
}