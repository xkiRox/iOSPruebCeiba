//
//  MockUserPostsInteractor.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation
@testable import iOSPruebaCeiba

class MockUserPostsInteractorInput: UserPostsInteractorInputProtocol {
    var output: UserPostsInteractorOutputProtocol?
    
    func fetchPostUsers(id: Int) {
        
    }
}

class MockUserPostsInteractorOutput: UserPostsInteractorOutputProtocol {
    func postUsersLoaded(posts: [PostItem]) {
        
    }
    
    func postUsersFailedToLoad(error: Error) {
        
    }
}
