//
//  LaunchPresenterTests.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import XCTest
@testable import iOSPruebaCeiba

class LaunchPresenterTests: XCTestCase {
    var presenter: LaunchPresenter?
    
    override func setUpWithError() throws {
        let interactor = MockLaunchInteractor()
        let router = MockLaunchRouter()
        presenter = LaunchPresenter(interactor: interactor, router: router)
    }

    func testExample() throws {
        presenter?.launch()
    }
}
