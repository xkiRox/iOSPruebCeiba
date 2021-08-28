//
//  MockUserPostsServiceFactory.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

@testable import iOSPruebaCeiba

struct MockUserPostsServiceFactory {
    private init() {  }
    static var success: Bool = true
    
    static func createService() -> PostService {
        let apiClient = MockAPIClient()
        let mockUserPostsService = MockUserPostsService(apiClient: apiClient)
        mockUserPostsService.success = success
        return mockUserPostsService
    }
}
