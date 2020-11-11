# How to bypass the `AppDelegate` when running tests - UIKit Example

Create a `main.swift` file and conditionally load the production `UIApplicationDelegate`, returning `nil` if the tests are running.

```swift
// main.swift
import UIKit

private func delegateClassName() -> String? {
    return NSClassFromString("XCTestCase") == nil ? NSStringFromClass(AppDelegate.self) : nil
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName())
```
