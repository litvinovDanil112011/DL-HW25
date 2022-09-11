//
//  Model.swift
//  DL-HW25
//
//  Created by Daniil Litvinov on 11.09.2022.
//

import Foundation

struct Cards: Decodable {
    var cards: [Card]
}

struct Card: Decodable {
    let name: String
    let rarity: String
    let setName: String
    let text: String
    let artist: String
}

