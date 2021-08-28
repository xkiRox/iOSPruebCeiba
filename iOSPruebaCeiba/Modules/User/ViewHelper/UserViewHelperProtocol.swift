//
//  UserViewHelperProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

protocol UserViewHelperProtocol: AnyObject {
    var output: UserInteractorOutputProtocol? { get }
    
    func showUsers(users: [UserItem])
    func showError()
}
