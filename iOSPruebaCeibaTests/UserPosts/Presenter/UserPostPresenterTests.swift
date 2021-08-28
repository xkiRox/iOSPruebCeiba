//
//  UserPostPresenterTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserPostPresenterTests: XCTestCase {
    var presenter: UserPostPresenter?
    
    func testPresent_WhenInit_ShouldInit() throws {
        let router = MockUserPostsRouter(id: 0, name: "Test")
        let interactor = MockUserPostsInteractorInput()
        let view = MockUserPostsViewHelper()
        
        presenter = UserPostPresenter(view: view, interactor: interactor, router: router)
    }
}
