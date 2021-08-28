//
//  UserViewHelperTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class UserViewHelperTests: XCTestCase {
    var view: UserViewHelper?
    
    override func setUpWithError() throws {
        view = UserViewHelper()
    }

    func testUserView_ShouldCallShowUsersResponseReturnNotNil() throws {
        view?.showUsers(users: [UserItem(user: User(id: 0, name: "", username: "", email: "", address: Address(street: "", suite: "", city: "", zipcode: "", geo: Geo(lat: "", lng: "")), phone: "", website: "", company: Company(name: "", catchPhrase: "", bs: "")))])
    }
    
    func testUserView_ShouldCallShowErrorResponseReturnNotNil() throws {
        view?.showError()
    }
}
