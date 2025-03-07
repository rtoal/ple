import ballerina/io;

function pad (int n) returns string {return n.toString().padZero(2);}

public function main() {
    foreach int i in 0...10 {
        int t = (43200 * i + 21600) / 11;
        int[3] [h, m, s] = [t / 3600, t / 60 % 60, t % 60];
        io:println(`${pad(h == 0 ? 12 : h)}:${pad(m)}:${pad(s)}`);
    }
}