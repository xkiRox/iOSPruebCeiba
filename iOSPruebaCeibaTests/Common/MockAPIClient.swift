//
//  MockAPIClient.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation
@testable import iOSPruebaCeiba

class MockAPIClient: APIClient {
    var callbackQueue: DispatchQueue
    
    init(callbackQueue: DispatchQueue = .main) {
        self.callbackQueue = callbackQueue
    }
    
    func get<T>(_ request: T, completion: @escaping ResultCallback<T.Response>) where T : APIGETRequest {
        
    }
    
    func post<T>(_ request: T, completion: @escaping ResultCallback<Void>) where T : APIPOSTRequest {
        
    }
}
