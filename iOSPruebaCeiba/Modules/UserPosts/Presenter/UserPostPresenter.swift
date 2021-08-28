//
//  UserPostPresenter.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

class UserPostPresenter: UserPostPresenterProtocol {
    var view: UserPostsViewHelperProtocol?
    var interactor: UserPostsInteractorInputProtocol?
    var router: UserPostsRouter?
    
    init(view: UserPostsViewHelperProtocol, interactor: UserPostsInteractorInputProtocol, router: UserPostsRouter) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func fetchPostUsers(id: Int, name: String) {
        interactor?.fetchPostUsers(id: id)
    }
}

extension UserPostPresenter: UserPostsInteractorOutputProtocol {
    func postUsersLoaded(posts: [PostItem]) {
        view?.showUserPosts(posts: posts)
    }
    
    func postUsersFailedToLoad(error: Error) {
        
    }
}
