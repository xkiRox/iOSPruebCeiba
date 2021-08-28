//
//  PostItem.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

struct PostItem {
    let id: Int
    let title: String
    let body: String
    
    init(post: Post) {
        self.id = post.id
        self.title = post.title
        self.body = post.body
    }
}
