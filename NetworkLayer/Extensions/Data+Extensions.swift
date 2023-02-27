//
//  Data+Extensions.swift
//  NetworkLayer
//
//  Created by MacBook Pro on 16/2/23.
//  Copyright © 2023 Malcolm Kumwenda. All rights reserved.
//

import UIKit

extension Data {
     func decoded<T: Decodable>() throws -> T{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: self)
    }
}
