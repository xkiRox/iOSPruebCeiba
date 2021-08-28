//
//  UserInteractor.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

final class UserInteractor: UserInteractorInputProtocol {
    private let userService: UserService
    weak var output: UserInteractorOutputProtocol?
    
    init(userService: UserService) {
        self.userService = userService
    }
    
    func fetchUsers() {
        userService.getUsers { [weak self] result in
            switch result {
            case .success(let users):
                let items = users.map { UserItem(user: $0) }
                self?.output?.usersLoaded(users: items)
            case .failure(let error):
                self?.output?.usersFailedToLoad(error: error)
            }
        }
    }
}
