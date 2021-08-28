//
//  UserPostsViewHelper.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

class UserPostsViewHelper: ObservableObject {
    var output: UserPostsInteractorOutputProtocol?
    @Published var posts: [PostItem] = []
    @Published var name: String = ""
    
}

extension UserPostsViewHelper: UserPostsViewHelperProtocol {
    func showUserPosts(posts: [PostItem]) {
        self.posts = posts
    }
    
    func showError() {
        
    }
}
