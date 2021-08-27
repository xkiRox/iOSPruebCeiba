//
//  UsersRequest.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

struct UsersRequest: APIGETRequest {
    typealias Response = [User]
    
    var resourceName: String {
        return "users"
    }
}
