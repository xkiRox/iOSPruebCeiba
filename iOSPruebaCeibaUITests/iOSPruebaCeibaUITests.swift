//
//  iOSPruebaCeibaUITests.swift
//  iOSPruebaCeibaUITests
//
//  Created by Hector Satizabal on 27/08/21.
//

import XCTest

class iOSPruebaCeibaUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }

    func testViewUser_ShouldSearchUserReturnListInEmpty() throws {
        let scrollViewsQuery = XCUIApplication().scrollViews
        let elementsQuery = scrollViewsQuery.otherElements
        elementsQuery.searchFields["Buscar Usuario"].tap()
        elementsQuery.searchFields["Buscar Usuario"].typeText("something")
        
        XCTAssertTrue(elementsQuery.staticTexts["Lista vacia"].exists)
    }
    
    func testViewUser_ShouldValidateFieldsReturnExistFields() throws {
        let elementsQuery = XCUIApplication().scrollViews.otherElements.element(boundBy: 0)
        
        XCTAssertTrue(elementsQuery.children(matching: .staticText).matching(identifier: "VER PUBLICACIONES").element(boundBy: 0).exists)
        XCTAssertTrue(elementsQuery.children(matching: .image).matching(identifier: "Call").element(boundBy: 0).exists)
        XCTAssertTrue(elementsQuery.children(matching: .image).matching(identifier: "get mail").element(boundBy: 0).exists)                
    }
}
