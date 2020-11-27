//
//  StoreViewModel.swift
//  PureSwiftNetwork
//
//  Created by 鄭惟臣 on 2020/11/27.
//  Copyright © 2020 Weichen Cheng_鄭惟臣. All rights reserved.
//

import Foundation

class StoreViewModel {
    let router = Router<StoreAPI>()
    var getStoreSuccess: (() -> ())?
    var getStoreFail: ((_ error: String) -> ())?
    
    var data: [Store] = []
    
    func getStore() {
        router.request(.getStores) {[weak self] (data: ResponseArray<Store>?, error) in
            if let error = error {
                self?.getStoreFail?(error)
                return
            }
            
            if let data = data?.ReturnData {
                self?.data = data
                self?.getStoreSuccess?()
            }
        }
    }
}
