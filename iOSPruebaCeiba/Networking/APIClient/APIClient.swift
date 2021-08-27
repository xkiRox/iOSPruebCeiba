//
//  APIClient.swift
//  iOSPruebaCeiba
//
//  Created by Hector Satizabal on 27/08/21.
//

import Foundation

enum APIClientError: Error {
    case serviceError(description: String, code: Int)
    case decodingFailure
    case unknown
}

protocol APIRequest {
    var resourceName: String { get }
}

protocol APIGETRequest: APIRequest {
    associatedtype Response: Codable
}

protocol APIPOSTRequest: APIRequest {
    var params: Dictionary<String, Any> { get }
    var headers: Dictionary<String, String> { get }
}

typealias ResultCallback<Value> = (Result<Value, APIClientError>) -> Void

protocol APIClient {
    var callbackQueue: DispatchQueue { get }
    
    func get<T: APIGETRequest>(_ request: T, completion: @escaping ResultCallback<T.Response>)
    func post<T: APIPOSTRequest>(_ request: T, completion: @escaping ResultCallback<Void>)
}
