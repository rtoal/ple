var history: [String] = []

class C {
    init() {history.append("init")}
    deinit {history.append("deinit")}
}

func f(c: C) {
    history.append("enter f")
    let x = c
    print(x)
    history.append("exit f")
}

func main() {
    history.append("enter main")
    let c = C()
    f(c)
    history.append("exit main")
}

history.append("begin script")
main()
history.append("end script")
print(history)
