//
//  Copyright © 2016-2020 mokacoding. All rights reserved.
//

import UIKit

private func delegateClassName() -> String? {
    return NSClassFromString("XCTestCase") == nil ? NSStringFromClass(AppDelegate.self) : nil
}


UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName())
