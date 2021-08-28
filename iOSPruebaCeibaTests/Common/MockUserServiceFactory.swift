//
//  MockUserServiceFactory.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation
@testable import iOSPruebaCeiba

struct MockUserServiceFactory {
    private init() {  }
    static var success: Bool = true
    
    static func createService() -> UserService {
        let apiClient = MockAPIClient()
        let mockUserService = MockUserService(apiClient: apiClient)
        mockUserService.success = success
        return mockUserService
    }
}
