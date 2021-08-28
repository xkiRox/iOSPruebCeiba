//
//  SimplePostService.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

class SimplePostService: PostService {
    let apiClient: APIClient
    
    init(apiClient: APIClient, completionQueue: DispatchQueue = .main) {
        self.apiClient = apiClient
    }
    
    func getPosts(id: Int, _ completion: @escaping (Result<[Post], Error>) -> Void) {
        apiClient.get(PostRequest(id: id), completion: { response in
            switch response {
            case .success(let results):
                completion(.success(results))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}
