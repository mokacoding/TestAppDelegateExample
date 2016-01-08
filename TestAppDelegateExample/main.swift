//
//  Copyright © 2016 mokacoding. All rights reserved.
//

import UIKit

private func delegateClassName() -> String? {
    return NSClassFromString("XCTestCase") == nil ? NSStringFromClass(AppDelegate) : nil
}


UIApplicationMain(Process.argc, Process.unsafeArgv, nil, delegateClassName())