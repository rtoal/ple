@fieldwise_init
struct Balloon(Writable):
    var color: String

    fn write_to(self, mut writer: Some[Writer]):
        writer.write(String("a ", self.color, " balloon"))

    fn __del__(deinit self):
        print("Destroyed", String(self))


def main():
    var a = Balloon("red")
    var b = Balloon("blue")
    print(a)
    # a.__del__() runs here for red Balloon
    a = Balloon("green")
    # a.__del__() runs immediately because green Balloon is never used
    print(b)
    # b.__del__() runs here
