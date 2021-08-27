//
//  ApiClientFactory.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

struct APIClientFactory {
    static func createClient(callbackQueue: DispatchQueue) -> APIClient {
        let urlSession = URLSession(configuration: .default)
        let client = SimpleAPIClient(urlSession: urlSession, callbackQueue: callbackQueue)
        return client
    }
    
    private init() {  }
}
