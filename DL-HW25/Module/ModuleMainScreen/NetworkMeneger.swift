//
//  NetworkMeneger.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 02.10.2022.
//

import Foundation
import Alamofire

extension MainScreenViewController {    
    func getData() {
            if self.cardsArray.isEmpty {
            let request = AF.request("https://api.magicthegathering.io/v1/cards")
            request.responseDecodable(of: Cards.self) { [self] (data) in
                guard let cardData = data.value else { return }
                let cards = cardData.cards
                self.cardsArray = cards
                tableView.reloadData()
            }
        }
    }
}


