public class VariableExample {
    public static void main(String[] args) {
        String mood = "happy"; // ok, but redundant
        var message = "WAIT"; // sensibly inferred
        var dozen = 12; // inferred as int
        // dozen = 12.0; // ERROR cannot assign float to int
        // dozen = "dog"; // ERROR cannot assign String to int
        boolean found; // ok to omit initializer if constraint present
        // var status; // ERROR: impossible to infer
    }
}
