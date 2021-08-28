//
//  MockUserPostsService.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation
@testable import iOSPruebaCeiba

class MockUserPostsService: PostService {
    var apiClient: APIClient
    var success: Bool = true
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func getPosts(id: Int, _ completion: @escaping (Result<[Post], Error>) -> Void) {
        if success {
            completion(.success([Post(userID: 0, id: 0, title: "Title", body: "Body")]))
        }
        else {
            completion(.failure(NSError(domain: "Error", code: 400, userInfo: nil)))
        }
    }
}
