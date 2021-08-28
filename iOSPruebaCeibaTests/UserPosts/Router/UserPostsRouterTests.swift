//
//  UserPostsRouterTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserPostsRouterTests: XCTestCase {
    var router = UserPostsRouter(id: 0, name: "Test")
    
    func testUserPostsRouter_ShouldReturnNotNil() throws {
        XCTAssertNotNil(router.viewController)
    }
}
