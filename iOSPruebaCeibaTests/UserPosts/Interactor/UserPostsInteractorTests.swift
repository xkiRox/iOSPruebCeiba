//
//  UserPostsInteractorTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserPostsInteractorTests: XCTestCase {
    
    func testUserPostsInteractor_ShouldSuccessResponseReturnNotNil() throws {
        let postsUserService = MockUserPostsServiceFactory.createService()
        let interactor = UserPostsInteractor(postService: postsUserService)
        interactor.fetchPostUsers(id: 0)
    }
    
    func testUserPostsInteractor_ShouldFailureResponseReturnNotNil() throws {
        MockUserPostsServiceFactory.success = false
        let postsUserService = MockUserPostsServiceFactory.createService()
        let interactor = UserPostsInteractor(postService: postsUserService)
        interactor.fetchPostUsers(id: 0)
    }
}
