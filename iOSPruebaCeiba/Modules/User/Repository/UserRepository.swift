//
//  UserRepository.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 29/08/21.
//

import Foundation

class UserRepository: UserRepositoryProtocol {
    private let userService: UserService = UserServiceFactory.createService()
    private(set) lazy var userCache: UserCache = UserCache()
    
    func getUsers(_ completion: @escaping (Result<[UserItem], Error>) -> Void) {
        if let usersData = userCache.getUsersData() {
            completion(.success(usersData))
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
