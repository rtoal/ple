class NullType {
    public static function main():Void {
        var a:Int = null;          // Risky
        var b:Null<Int> = null;    // Safe

        var c:Int = b;             // Sets to default type (0)
    }
}