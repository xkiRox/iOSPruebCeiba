//
//  UserPresenterTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserPresenterTests: XCTestCase {
    var presenter: UserPresenter?
    
    func testPresent_WhenInit_ShouldInit() throws {
        let router = MockUserRouter()
        let interactor = MockUserInteractorInput()
        let view = MockUserViewHelper()
        
        presenter = UserPresenter(view: view, interactor: interactor, router: router)
    }
}
