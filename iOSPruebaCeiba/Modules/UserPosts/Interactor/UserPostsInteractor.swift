//
//  UserPostsInteractor.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

class UserPostsInteractor: UserPostsInteractorInputProtocol {
    private let postService: PostService
    weak var output: UserPostsInteractorOutputProtocol?
    
    init(postService: PostService) {
        self.postService = postService
    }
    
    func fetchPostUsers(id: Int) {
        postService.getPosts(id: id, { [weak self] result in
            switch result {
            case .success(let posts):
                let items = posts.map { PostItem(post: $0) }
                self?.output?.postUsersLoaded(posts: items)
            case .failure(let error):
                self?.output?.postUsersFailedToLoad(error: error)
            }
        })
    }
}
