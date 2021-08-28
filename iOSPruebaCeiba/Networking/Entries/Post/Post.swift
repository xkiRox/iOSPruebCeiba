//
//  Pos.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

// MARK: - Post
struct Post: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
