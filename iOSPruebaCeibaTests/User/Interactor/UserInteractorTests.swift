//
//  UserInteractorTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserInteractorTests: XCTestCase {
    let mockUserCache = MockUserCache()
    let mockUserService = UserServiceFactory.createService()

    func testUserInteractor_ShouldSuccessResponseReturnNotNil() throws {
        let repository = MockUserRepository(userCache: mockUserCache, userService: mockUserService)
        let interactor = UserInteractor(userRepository: repository)
        interactor.fetchUsers()
    }
    
    func testUserInteractor_ShouldFailureResponseReturnNotNil() throws {
        MockUserServiceFactory.success = false
        let repository = MockUserRepository(userCache: mockUserCache, userService: mockUserService)
        let interactor = UserInteractor(userRepository: repository)
        interactor.fetchUsers()
    }
}
