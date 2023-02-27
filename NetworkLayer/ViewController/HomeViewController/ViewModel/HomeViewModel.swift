//
//  HomeViewModel.swift
//  NetworkLayer
//
//  Created by MacBook Pro on 12/2/23.
//  Copyright © 2023 Malcolm Kumwenda. All rights reserved.
//

import UIKit

class HomeViewModel {
    
    let responseHandler: ResponseHandler
    var networkManager: NetworkManager

    
    init(responseHandler: ResponseHandler = ResponseHandler(),network: NetworkManager = NetworkManager()) {
        self.responseHandler = responseHandler
        self.networkManager = network
    }


//    func getMovieData() {
//        networkManager.getNewMovies() { data in
//
//            switch data {
//
//            case .success(let data):
//                let countryInfo: [CountryListModel] = try! data.decoded()
//            case .failure(_):
//                debugPrint("Errrorrr")
//            }
//        }
//    }
    
    func specifiCountryName(CountryName: String) {
        let router = Router<MovieApi>()
        typealias countryInfo = [CountryListModel]
        router.request(.spacificCountry(countryName: "peru")) { data, response, error in
            if let data {
                do {
                    let info: countryInfo = try! data.decoded()
                    debugPrint("Peru Info ",info)
                } catch let error {
                    debugPrint("ERROR ",error.localizedDescription)
                }

            }
        }
    }
}
