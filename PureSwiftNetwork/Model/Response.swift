//
//  Response.swift
//  PureSwiftNetwork
//
//  Created by 鄭惟臣 on 2020/11/27.
//  Copyright © 2020 Weichen Cheng_鄭惟臣. All rights reserved.
//

import Foundation

struct Response<T : Codable> : Codable {
    let ReturnCode: Int
    let ReturnMessage: String
    let ReturnData: T
}

struct ResponseArray<T : Codable> : Codable {
    let ReturnCode: Int
    let ReturnMessage: String
    let ReturnData: [T]
}

