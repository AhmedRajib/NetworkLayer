//
//  ViewController.swift
//  NetworkLayer
//
//  Created by Malcolm Kumwenda on 2018/03/05.
//  Copyright © 2018 Malcolm Kumwenda. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
//    var networkManager: NetworkManager?
    var vm: HomeViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        vm = HomeViewModel()
//        networkManager.getNewMovies(page: 1) { data in
//            
//            switch data {
//                
//            case .success(let data): break
//                
//                
//            case .failure(_):
//                debugPrint("Errrorrr")
//            }
//        }
        
//        networkManager.recommended
        
        vm?.specifiCountryName(CountryName: "peru")
    }
}


