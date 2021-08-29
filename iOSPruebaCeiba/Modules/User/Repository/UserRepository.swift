//
//  UserRepository.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 29/08/21.
//

import Foundation

class UserRepository: UserRepositoryProtocol {
    private let userService: UserService
    private let userCache: UserCacheProtocol
    
    init(userCache: UserCacheProtocol, userService: UserService) {
        self.userCache = userCache
        self.userService = userService
    }
    
    func getUsers(_ completion: @escaping (Result<[UserItem], Error>) -> Void) {
        if let usersData = userCache.getUsersData() {
            completion(.success(usersData))
            return
        }
        userService.getUsers { [weak self] result in
            switch result {
            case .success(let users):
                let items = users.map { UserItem(user: $0) }
                self?.userCache.setUsersData(value: items)
                completion(.success(items))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
