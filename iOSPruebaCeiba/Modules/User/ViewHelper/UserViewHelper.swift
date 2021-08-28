//
//  UserViewHelper.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Combine

final class UserViewHelper: ObservableObject {
    var output: UserInteractorOutputProtocol?
    
    @Published var users: [UserItem] = []
}

extension UserViewHelper: UserViewHelperProtocol {
    func showUsers(users: [UserItem]) {
        self.users = users
    }
    
    func showError() {
        
    }
}
