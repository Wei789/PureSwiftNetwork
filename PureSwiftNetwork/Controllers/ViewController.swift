//
//  ViewController.swift
//  PureSwiftNetwork
//
//  Created by Weichen Cheng_鄭惟臣 on 2018/5/28.
//  Copyright © 2018年 Weichen Cheng_鄭惟臣. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let viewModel = StoreViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getStore()
        viewModel.getStoreSuccess = {[weak self] in
            // do Something, ex: update UI
            print(self?.viewModel.data ?? "")
        }
        
        viewModel.getStoreFail = {(error) in
            // error handling
            print(error)
        }
    }
}


