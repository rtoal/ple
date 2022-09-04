record Pair<T, U> (T first, U second) {    
}

class PairExample {
    public static void main(String[] args) {
        var p1 = new Pair<String, Integer>("Hello", 2);
        var p2 = new Pair<Integer, Boolean>(1, false);
        assert p1.second() == 2;
        assert p2.second() == false;
    }
}
