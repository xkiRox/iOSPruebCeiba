//
//  UserCache.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 29/08/21.
//

import Foundation

class UserCache: UserCacheProtocol {
    func getUsersData() -> [UserItem]? {
        let userDefaults = UserDefaults.standard
        return try? userDefaults.getObject(forKey: "users", castTo: [UserItem].self)
    }
    
    func setUsersData(value: [UserItem]) {
        let userDefaults = UserDefaults.standard
        try? userDefaults.setObject(value, forKey: "users")
    }
}
