//
//  Coins.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 13/12/2022.
//

import Foundation

struct Coins: Decodable {
    var name: String?
    var symbol: String?
    var rank: Int?
    var id: String?
    var price_usd: String?
    var market_cap_usd: String?
    var percent_change_1h: String?
    var percent_change_24h: String?
    var percent_change_7d: String?
}

struct SearchResultsCoins: Decodable {
    let data: [Coins]
}

