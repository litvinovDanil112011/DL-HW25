//
//  NetworkManager.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 21.10.2022.
//

import Foundation
import Alamofire
import UIKit

class NetworkManager {
            
    func fetchData(handler: @escaping ([Card]) -> Void) {
        
        guard let url = URL(string: "https://api.magicthegathering.io/v1/cards") else { return }
        
        AF.request(url).response { response in
            do {
                guard let responseDataSet = response.data else {
                    print("no data")
                    return }
                let responseData = try JSONDecoder().decode(Cards.self, from: responseDataSet)
                handler(responseData.cards)
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
}

    
        
