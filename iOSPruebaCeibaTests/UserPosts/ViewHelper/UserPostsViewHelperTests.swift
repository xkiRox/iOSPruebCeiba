//
//  UserPostsViewHelperTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserPostsViewHelperTests: XCTestCase {
    var view: UserPostsViewHelper?
    
    override func setUpWithError() throws {
        view = UserPostsViewHelper()
    }

    func testUserPostsView_ShouldCallShowUsersResponseReturnNotNil() throws {
        view?.showUserPosts(posts: [PostItem(post: Post(userID: 0, id: 0, title: "Title", body: "Body"))])
    }
    
    func testUserPostsView_ShouldCallShowErrorResponseReturnNotNil() throws {
        view?.showError()
    }
}
