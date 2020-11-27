//
//  Store.swift
//  PureSwiftNetwork
//
//  Created by 鄭惟臣 on 2020/11/27.
//  Copyright © 2020 Weichen Cheng_鄭惟臣. All rights reserved.
//

import Foundation

struct Store: Codable {
    var id: String
    var name: String
    
    private enum CodingKeys : String, CodingKey {
            case id = "Id", name = "Name"
    }
}
