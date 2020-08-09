//
//  Copyright © 2016-2020 mokacoding. All rights reserved.
//

import UIKit
import os

private func delegateClassName() -> String? {
    if NSClassFromString("XCTestCase") != nil {
        os_log("💁🏻‍♂️ Running on test target without TestAppDelegate")
        #if DEBUG
        return NSStringFromClass(TestAppDelegate.self)
        #else
        return nil
        #endif
    } else {
        return NSStringFromClass(AppDelegate.self)
    }
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName())
