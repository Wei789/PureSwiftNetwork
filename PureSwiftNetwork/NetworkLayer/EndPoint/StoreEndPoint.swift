//
//  StoreEndPoint.swift
//  PureSwiftNetwork
//
//  Created by Weichen Cheng_鄭惟臣 on 2018/6/19.
//  Copyright © 2018年 Weichen Cheng_鄭惟臣. All rights reserved.
//

import Foundation


public enum StoreAPI {
    case getStores
    case getStore(id: String)
}

extension StoreAPI: EndPointType {
  var baseURL: URL? {
    return nil
  }
  
  var path: String {
    switch self {
    case .getStores:
        return "result1"
    case .getStore:
        return "result2"
    }
  }
  
  var httpMethod: HTTPMethod {
    return .get
  }
  
  var task: HTTPTask {
    switch self {
    case .getStores:
      return .request
    case .getStore(let id):
        return .requestParameters(bodyParameters: nil, urlParameters: ["id": id])
    }
  }
  
  var headers: HTTPHeaders? {
    return nil
  }
}
