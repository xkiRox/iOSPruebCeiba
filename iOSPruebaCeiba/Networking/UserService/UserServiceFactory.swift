//
//  UserServiceFactory.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

struct UserServiceFactory {
    static func createService() -> UserService {
        let apiClient = APIClientFactory.createClient(callbackQueue: .main)
        let simpleUserService = SimpleUserService(apiClient: apiClient)
        return simpleUserService
    }
    
    private init() {  }
}
