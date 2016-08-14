var history: [String] = []

class C {
    init() {history.append("init")}
    deinit {history.append("deinit")}
}

func f(_ c: C) {             // 3. count==2
    history.append("f")
    print(c)
    history.append("/f")
}                            // 4. c out of scope, count == 1

func main() {
    history.append("main")
    let x = C()              // 1. object created, count==1
    f(x)                     // 2. reference passed
    history.append("/main")
}                            // 5. x out of scope, count == 0

main()
assert(history == ["main", "init", "f", "/f", "/main", "deinit"])
