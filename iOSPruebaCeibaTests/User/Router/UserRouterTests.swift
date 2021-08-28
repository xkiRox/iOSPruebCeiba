//
//  UserRouterTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserRouterTests: XCTestCase {
    var router = UserRouter()
    
    func testUserRouter_ShouldReturnNotNil() throws {
        XCTAssertNotNil(router.viewController)
    }
}
