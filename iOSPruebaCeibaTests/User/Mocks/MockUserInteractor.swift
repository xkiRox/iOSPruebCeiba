//
//  MockUserInteractor.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation
@testable import iOSPruebaCeiba

class MockUserInteractorInput: UserInteractorInputProtocol {
    var output: UserInteractorOutputProtocol?
    
    func fetchUsers() {
        
    }
}

class MockUserInteractorOutput: UserInteractorOutputProtocol {
    func usersLoaded(users: [UserItem]) {
        
    }
    
    func usersFailedToLoad(error: Error) {
        
    }
}
