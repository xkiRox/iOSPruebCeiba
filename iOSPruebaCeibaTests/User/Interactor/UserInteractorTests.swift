//
//  UserInteractorTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserInteractorTests: XCTestCase {

    func testUserInteractor_ShouldSuccessResponseReturnNotNil() throws {
        let userService = MockUserServiceFactory.createService()
        let interactor = UserInteractor(userService: userService)
        interactor.fetchUsers()
    }
    
    func testUserInteractor_ShouldFailureResponseReturnNotNil() throws {
        MockUserServiceFactory.success = false
        let userService = MockUserServiceFactory.createService()
        let interactor = UserInteractor(userService: userService)
        interactor.fetchUsers()
    }
}
