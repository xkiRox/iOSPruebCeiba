//
//  MockUserCache.swift
//  iOSPruebaCeibaTests
//
//  Created by Hector Satizabal on 29/08/21.
//

import Foundation
@testable import iOSPruebaCeiba

class MockUserCache: UserCacheProtocol {
    var success: Bool = true
    func getUsersData() -> [UserItem]? {
        if success {
            return []
        } else {
            return nil
        }
    }
    
    func setUsersData(value: [UserItem]) {
        
    }
}
