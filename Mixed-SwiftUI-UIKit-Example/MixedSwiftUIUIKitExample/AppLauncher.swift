import SwiftUI

// This is an alternative option to what main.swift does. To enable it:
//
// 1. Rename main.swift to something different, e.g. _main.swift, so that it won't act as the main
//    entry point of the app anymore
// 2. Comment the UIApplicationMain directive (the compiler will tell you about that)
// 3. Uncomment @main below.
//
// This is not the approach I would endorse because it adds a bit of overhead with the
// TestAppDelegate class and it's not immediately clear what AppLauncher.swift does when scrolling
// through the file list. Having a main.swift file seems clearer.

//@main
struct AppLauncher {
    static func main() throws {
        if NSClassFromString("XCTestCase") == nil {
            AppDelegate.main()
        } else {
            TestAppDelegate.main()
        }
    }
}

class TestAppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }
}
