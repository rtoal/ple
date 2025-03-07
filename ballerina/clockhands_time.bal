import ballerina/io;
import ballerina/time;

public function main() {
    foreach int i in 0...10 {
        time:Utc utc = [(43200 * i + 21600) / 11, 0.0];
        io:println(time:utcToString(utc));
    }
}