//
//  UserItem.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

struct UserItem: Codable  {
    let id: Int
    let name: String
    let phone: String
    let email: String
    
    init(user: User) {
        self.id = user.id
        self.name = user.name
        self.phone = user.phone
        self.email = user.email
    }
}
