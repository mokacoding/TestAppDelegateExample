//
//  Copyright © 2016 mokacoding. All rights reserved.
//

import UIKit
import os

private func delegateClassName() -> String? {
    if NSClassFromString("XCTestCase") != nil {
        os_log("💁🏻‍♂️ Running on test target without TestAppDelegate")
        return NSStringFromClass(TestAppDelegate.self)
    } else {
        return NSStringFromClass(AppDelegate.self)
    }
}


_ = UIApplicationMain(CommandLine.argc,
                  UnsafeMutableRawPointer(CommandLine.unsafeArgv).bindMemory(to: UnsafeMutablePointer<Int8>.self, capacity: Int(CommandLine.argc)),
                  nil,
                  delegateClassName()
)
