//
//  UserRouter.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import SwiftUI
import UIKit

class UserRouter: UserRouterProtocol {
    var viewController: UIViewController {
        let service = UserServiceFactory.createService()
        let interactor = UserInteractor(userService: service)
        let viewHelper = UserViewHelper()
        let view = UserView(viewHelper: viewHelper)
        let viewController = UIHostingController(rootView: view)
        let presenter = UserPresenter(view: viewHelper, interactor: interactor, router: self)
        
        viewHelper.output = presenter
        interactor.output = presenter
        return viewController
    }
}
