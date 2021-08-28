//
//  MockUserService.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation
@testable import iOSPruebaCeiba

class MockUserService: UserService {
    var apiClient: APIClient
    var success: Bool = true
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func getUsers(_ completion: @escaping (Result<[User], Error>) -> Void) {
        if success {
            completion(.success([User(id: 1, name: "", username: "", email: "", address: Address(street: "", suite: "", city: "", zipcode: "", geo: Geo(lat: "", lng: "")), phone: "", website: "", company: Company(name: "", catchPhrase: "", bs: ""))]))
        }
        else {
            completion(.failure(NSError(domain: "Error", code: 400, userInfo: nil)))
        }
    }
}
