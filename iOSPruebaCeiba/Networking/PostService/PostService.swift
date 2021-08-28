//
//  PostService.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 28/08/21.
//

import Foundation

protocol PostService {
    var apiClient: APIClient { get }
    
    func getPosts(id: Int, _ completion: @escaping (Result<[Post], Error>) -> Void)
}
