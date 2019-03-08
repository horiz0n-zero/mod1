import Cocoa

// due to the new constraint syntax
@available(OSX 10.11, *)

class AppDelegate: NSObject, NSApplicationDelegate {
	let window = NSWindow()
	let windowDelegate = WindowDelegate()

	func applicationDidFinishLaunching(aNotification: NSNotification) {

		window.setContentSize(NSSize(width: 1920, height: 1080))
		window.styleMask = [.titled, .closable, .miniaturizable, .resizable]
		window.level = .normal
		window.delegate = windowDelegate
		window.isOpaque = false
		window.title = "Mod1"
		_ = window.contentView!

		print("hello")
		window.center()
		window.makeKeyAndOrderFront(window)
	}
}

class WindowDelegate: NSObject, NSWindowDelegate {

	public func windowWillClose(_ notification: Notification) {
		NSApplication.shared.terminate(0)
	}

}

if #available(OSX 10.11, *)  {
	let app = NSApplication.shared
	let appDelegate = AppDelegate()

	app.delegate = appDelegate
	app.run()
	print("run")
}
