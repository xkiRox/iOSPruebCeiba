//
//  SimpleUserService.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

final class SimpleUserService: UserService {
    let apiClient: APIClient
    
    init(apiClient: APIClient, completionQueue: DispatchQueue = .main) {
        self.apiClient = apiClient
    }
    
    func getUsers(_ completion: @escaping (Result<[User], Error>) -> Void) {
        apiClient.get(UsersRequest(), completion: { response in
            switch response {
            case .success(let results):
                completion(.success(results))
            case .failure(let error):
                completion(.failure(error))
            }
        })
    }
}
