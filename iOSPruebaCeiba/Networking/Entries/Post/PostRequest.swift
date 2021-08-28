//
//  PostRequest.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

struct PostRequest: APIGETRequest {
    typealias Response = [Post]
    private var id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    var resourceName: String {
        return "posts?userId=\(id)"
    }
}
