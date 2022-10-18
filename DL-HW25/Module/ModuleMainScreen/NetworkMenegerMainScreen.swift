//
//  NetworkMeneger.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 02.10.2022.
//

import Foundation
import Alamofire

class NetworkMenegerMainScreen {
    
    func getData() {
        if MainScreenViewController.cardsArray.isEmpty {
            let request = AF.request("https://api.magicthegathering.io/v1/cards")
            request.responseDecodable(of: Cards.self) { (data) in
                guard let cardData = data.value else { return }
                let cards = cardData.cards
                MainScreenViewController.cardsArray = cards
                MainScreenViewController.tableView.reloadData()
            }
        }
    }
}




