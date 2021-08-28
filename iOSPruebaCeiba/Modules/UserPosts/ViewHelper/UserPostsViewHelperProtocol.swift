//
//  UserPostsViewHelperProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import SwiftUI

protocol UserPostsViewHelperProtocol {
    var output: UserPostsInteractorOutputProtocol? { get }
    
    func showUserPosts(posts: [PostItem])
    func showError()
}
