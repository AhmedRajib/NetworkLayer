//
//  ResponseHandler.swift
//  NetworkLayer
//
//  Created by MacBook Pro on 12/2/23.
//  Copyright © 2023 Malcolm Kumwenda. All rights reserved.
//

import Foundation

class ResponseHandler {
    
    func decoder<T:Codable>(Data data:Data,type: T.Type, completionHandler: @escaping (ResponseResult<T, NetworkError>) -> Void) {
        do {
           let response = try? JSONDecoder().decode(T.self, from: data)
            if let response {
                completionHandler(.success(response))
            }
        }catch NetworkError.encodingFailed {
            completionHandler(.failure(.encodingFailed))
        }
    }
}

