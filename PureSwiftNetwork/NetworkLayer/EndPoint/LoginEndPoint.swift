//
//  LoginEndPoint.swift
//  PureSwiftNetwork
//
//  Created by Weichen Cheng_鄭惟臣 on 2018/5/31.
//  Copyright © 2018年 Weichen Cheng_鄭惟臣. All rights reserved.
//

import Foundation


public enum LoginApi {
    case logon(username: String, password: String)
}

extension LoginApi: EndPointType {
    var baseURL: URL? {
        return nil
    }
    
    var path: String {
        switch self {
        case .logon:
            return "acccount/logon"
        }
    }
    
    var httpMethod: HTTPMethod {
        return .get
    }
    
    var task: HTTPTask {
        switch self {
        case .logon(let username, let password):
            return .requestParameters(bodyParameters: nil, urlParameters: ["usernamae": username,
                                                                           "password": password])
        }
    }
    
    var headers: HTTPHeaders? {
        return nil
    }
}
