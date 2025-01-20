import time

fn main() {
    for i in 0 .. 11 {
        t := (43200 * i + 21600) / 11
        clock := time.unix(t)
        println(clock.custom_format("hh:mm:ss"))
    } 
}