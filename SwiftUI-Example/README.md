# How to bypass the `App` when running tests - SwiftUI Example

Create a new type and make it the `@main` for the application. From there, conditionally load the main `App` or a dummy one, depending on whether the tests are running

```swift
// AppLauncher.swift
import SwiftUI

@main
struct AppLauncher {
    static func main() throws {
        if NSClassFromString("XCTestCase") == nil {
            MyAwesomeApp.main() // Where `MyAwesomeApp` is the name of your `App`
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
``
