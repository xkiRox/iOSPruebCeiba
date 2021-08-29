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
        let repository = UserRepository()
        let viewHelper = UserViewHelper()
        let view = UserView(viewHelper: viewHelper)
        let interactor = UserInteractor(userRepository: repository)
        let presenter = UserPresenter(view: viewHelper, interactor: interactor, router: self)
        let viewController = UIHostingController(rootView: view)
        viewHelper.output = presenter
        interactor.output = presenter
        return viewController
    }
    
    func pushToUserPostsScreen(id: Int, name: String) {
        let userPostsRouter = UserPostsRouter(id: id, name: name)
        present(userPostsRouter.viewController, animated: true, completion: nil)
    }
}
