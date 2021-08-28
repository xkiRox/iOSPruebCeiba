//
//  UserInteractorProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

protocol UserInteractorInputProtocol: AnyObject {
    var output: UserInteractorOutputProtocol? { get set }
    
    func fetchUsers()
}

protocol UserInteractorOutputProtocol: AnyObject {
    func usersLoaded(users: [UserItem])
    func usersFailedToLoad(error: Error)
}
