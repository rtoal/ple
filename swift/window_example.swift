import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    let window = NSWindow()

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        window.setContentSize(NSSize(width:600, height:200))
        window.styleMask = NSTitledWindowMask | NSClosableWindowMask |
                           NSMiniaturizableWindowMask |
                           NSResizableWindowMask

        window.opaque = false
        window.center()
        window.title = "Hello"

        let button = NSButton(frame: NSMakeRect(20, 100, 180, 30))
        button.bezelStyle =  .ThickSquareBezelStyle
        button.title = "Click Me"
        button.target = NSApp
        window.contentView!.addSubview(button)

        window.makeKeyAndOrderFront(window)
        window.level = 1
    }
}

let app = NSApplication.sharedApplication()
let controller = AppDelegate()
app.delegate = controller
app.run()
