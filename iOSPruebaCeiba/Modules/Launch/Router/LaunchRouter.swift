//
//  LaunchRouter.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import SwiftUI
import UIKit

class LaunchRouter {
    static let shared: LaunchRouter = .init()
    private(set) var window: UIWindow?
    private(set) var presenter: LaunchPresenter?
    
    init() {
        let interactor = LaunchInteractor()
        let presenter = LaunchPresenter(interactor: interactor, router: self)
        self.presenter = presenter
    }
    
    func launch(window: UIWindow?) {
        self.window = window
        presenter?.launch()
    }
}

extension LaunchRouter: LaunchRouterProtocol {
    func initApp() {
        let router = UserRouter()
        window?.rootViewController = router.viewController
        window?.makeKeyAndVisible()
    }
}

