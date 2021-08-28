//
//  LaunchRouterTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class LaunchRouterTests: XCTestCase {
    var router: LaunchRouter?
    
    override func setUpWithError() throws {
        router = LaunchRouter()
    }

    func testLaunchRouter_ShouldInitAppResponseReturnNotNil() throws {
        router?.initApp()
    }
}
