//
//  UserRepositoryProtocol.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 29/08/21.
//

import Foundation

protocol UserRepositoryProtocol {
    func getUsers(_ completion: @escaping (Result<[UserItem], Error>) -> Void)
}
