//
//  UserPostsInteractorProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

protocol UserPostsInteractorInputProtocol: AnyObject {
    var output: UserPostsInteractorOutputProtocol? { get set }
    
    func fetchPostUsers(id: Int)
}

protocol UserPostsInteractorOutputProtocol: AnyObject {
    func postUsersLoaded(posts: [PostItem])
    func postUsersFailedToLoad(error: Error)
}
