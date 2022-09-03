interface A {
    int X = 1;            // implicitly public static final
    default void f() {}   // implicitly public
}

interface B {
    int X = 2;            // implicitly public static final
    default void f() {}   // implicitly public
}

// class C implements A, B { // WILL NOT COMPILE DUE TO f()
//     public static void main(String[] args) {
//         System.out.println(X); // WILL NOT COMPILE (X ambiguous)
//         f();
//     }
// }

class D implements A, B {
    @Override
    public void f() {
        System.out.println(A.X + B.X);
    }
}
