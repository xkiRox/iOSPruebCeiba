//
//  UserInteractor.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

class UserInteractor: UserInteractorInputProtocol {
    private let userRepository: UserRepository
    weak var output: UserInteractorOutputProtocol? {
        didSet {
            output?.getInitData()
        }
    }
    
    init(userRepository: UserRepository) {
        self.userRepository = userRepository
    }
    
    func fetchUsers() {
        userRepository.getUsers { [weak self] result in
            switch result {
            case .success(let users):
                self?.output?.usersLoaded(users: users)
            case .failure(let error):
                self?.output?.usersFailedToLoad(error: error)
            }
        }
    }
}
