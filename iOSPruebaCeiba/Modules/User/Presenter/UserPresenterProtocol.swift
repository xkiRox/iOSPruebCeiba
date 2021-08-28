//
//  UserPresenterProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

protocol UserPresenterProtocol: AnyObject {
    var view: UserViewHelperProtocol? { get set }
    var interactor: UserInteractorInputProtocol? { get set }
    var router: UserRouter? { get set }
}
