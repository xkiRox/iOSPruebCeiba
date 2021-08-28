//
//  PostServiceFactory.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

struct PostServiceFactory {
    static func createService() -> PostService {
        let apiClient = APIClientFactory.createClient(callbackQueue: .main)
        let simpleService = SimplePostService(apiClient: apiClient)
        return simpleService
    }
    
    private init() {  }
}
