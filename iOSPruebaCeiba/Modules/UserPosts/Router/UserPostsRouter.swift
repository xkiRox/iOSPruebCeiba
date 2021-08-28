//
//  UserPostsRouter.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import SwiftUI

class UserPostsRouter: UserPostsRouterProtocol {
    private let id: Int
    private let name: String
    
    var viewController: UIViewController {
        let service = PostServiceFactory.createService()
        let interactor = UserPostsInteractor(postService: service)
        let viewHelper = UserPostsViewHelper()
        viewHelper.name = name
        let view = UserPostsView(viewHelper: viewHelper)
        let viewController = UIHostingController(rootView: view)
        
        let presenter = UserPostPresenter(view: viewHelper, interactor: interactor, router: self)
        presenter.fetchPostUsers(id: id, name: name)
        viewHelper.output = presenter
        interactor.output = presenter
        return viewController
    }
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
