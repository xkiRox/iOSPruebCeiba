//
//  iOSPruebaCeibaUserPostsUITests.swift
//  iOSPruebaCeibaUITests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest

class iOSPruebaCeibaUserPostsUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testViewUserPosts_ShouldValideFieldsReturnExistFields() throws {
        
        let app = XCUIApplication()
        let scrollViewsQuery = app.scrollViews
        scrollViewsQuery.otherElements.staticTexts["Ervin Howell"].tap()
        
        let ervinHowellElementsQuery = scrollViewsQuery.otherElements.containing(.staticText, identifier:"Ervin Howell")
        
        let exp = expectation(description: "Test after 2 seconds")
        let result = XCTWaiter.wait(for: [exp], timeout: 2.0)
        if result == XCTWaiter.Result.timedOut {
            XCTAssertTrue(ervinHowellElementsQuery.children(matching: .staticText).matching(identifier: "Titulo").element(boundBy: 0).exists)
            XCTAssertTrue(ervinHowellElementsQuery.children(matching: .staticText).matching(identifier: "Descripción").element(boundBy: 0).exists)
            XCTAssertTrue(app.navigationBars["Publicaciones"].staticTexts["Publicaciones"].exists)
        }
    }
}
