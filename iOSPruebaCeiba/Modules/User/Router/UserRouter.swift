//
//  UserRouter.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import SwiftUI
import UIKit

final class UserRouter: UserRouterProtocol {
    private unowned let viewController: UIViewController

    private init(viewController: UIViewController) {
      self.viewController = viewController
    }
    
    static func presentModule() -> UIViewController {
        let service = UserServiceFactory.createService()
        let interactor = UserInteractor(userService: service)
        let viewHelper = UserViewHelper()
        let view = UserView(viewHelper: viewHelper)
        let viewController = UIHostingController(rootView: view)
        let router = UserRouter(viewController: viewController)
        let presenter = UserPresenter(view: viewHelper, interactor: interactor, router: router)
        
        viewHelper.output = presenter
        interactor.output = presenter
        return viewController
    }
    
    func dissmissModule() {
        
    }
}
