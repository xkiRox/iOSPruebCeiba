//
//  UserRepositoryTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 29/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserRepositoryTests: XCTestCase {
    var repository: UserRepository?
    let mockUserService = UserServiceFactory.createService()
    
    func testUserRepository_ShouldGetUsersSuccessReturnNotNil() throws {
        let mockUserCache = MockUserCache()
        mockUserCache.success = true
        repository = UserRepository(userCache: mockUserCache, userService: mockUserService)
        repository?.getUsers { result in
            switch result {
            case .success(let users):
                XCTAssertNotNil(users)
            case .failure(let error):
                XCTAssertNotNil(error)
            }
        }
    }
    
    func testUserRepository_ShouldGetUsersFailureReturnNotNil() throws {
        let mockUserCache = MockUserCache()
        mockUserCache.success = false
        repository = UserRepository(userCache: mockUserCache, userService: mockUserService)
        repository?.getUsers { result in
            switch result {
            case .success(let users):
                XCTAssertNotNil(users)
            case .failure(let error):
                XCTAssertNotNil(error)
            }
        }
    }
}
