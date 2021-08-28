//
//  UserPostPresenterProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

protocol UserPostPresenterProtocol: AnyObject {
    var view: UserPostsViewHelperProtocol? { get set }
    var interactor: UserPostsInteractorInputProtocol? { get set }
    var router: UserPostsRouter? { get set }
    
    func fetchPostUsers(id: Int, name: String)
}
