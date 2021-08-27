//
//  UserService.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

protocol UserService {
    var apiClient: APIClient { get }
    
    func getUsers(_ completion: @escaping (Result<[User], Error>) -> Void)
}
