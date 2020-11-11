import SwiftUI

@main
struct AppLauncher {
    static func main() throws {
        if NSClassFromString("XCTestCase") == nil {
            TestAppExampleApp.main()
        } else {
            TestApp.main()
        }
    }
}

struct TestApp: App {

    var body: some Scene {
        WindowGroup { Text("Running Unit Tests") }
    }
}
