import time

fn main() {
    for i in 0 .. 11 {
        t := (43200 * i + 21600) / 11
        println(time.unix(t).custom_format("hh:mm:ss"))
    } 
}