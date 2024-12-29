import ballerina/io;

public function main() {
    foreach int i in 0...10 {
        float t = ((<float>i + 0.5) * 43200.0 / 11.0).floor();
        int h = <int>((t / 3600.0).floor());
        int m = <int>t % 3600;
        io:println(`${h == 0 ? 12 : h.toString().padZero(2)}:${(<int>((<float>m / 60.0).floor())).toString().padZero(2)}:${(m % 60).toString().padZero(2)}`);
    }
}