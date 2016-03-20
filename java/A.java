interface A {
    public static final int x = 1;
    default void f() {}
}

interface B {
    public static final int x = 2;
    default void f() {}
}

// class C implements A, B { // WILL NOT COMPILE DUE TO f()
//     public static void main(String[] args) {
//         System.out.println(x); // WILL NOT COMPILE (x ambiguous)
//         f();
//     }
// }
