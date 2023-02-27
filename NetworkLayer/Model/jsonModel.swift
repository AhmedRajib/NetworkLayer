//
//  jsonModel.swift
//  NetworkLayer
//
//  Created by Ahmed Rajib on 8/2/23.
//  Copyright © 2023 Malcolm Kumwenda. All rights reserved.
//

import Foundation

struct JsonModel: Codable {
    let userID, id: Int?
    let title, body: String?

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}
