//
//  UserCacheProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 29/08/21.
//

import Foundation

protocol UserCacheProtocol: AnyObject {
    func getUsersData() -> [UserItem]?
    func setUsersData(value: [UserItem])
}
