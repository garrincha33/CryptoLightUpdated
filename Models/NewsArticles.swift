//
//  NewsArticles.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 13/12/2022.
//

import Foundation

struct NewsArticles {
    var title: String?
    var url: String?
    var urlToImage: String?
    var author: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case url
        case urlToImage
        case author
    }
}
struct SearchResults: Decodable {
    let totalResults: Int
    let articles: [NewsArticles]
}
extension NewsArticles: Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        urlToImage = try values.decodeIfPresent(String.self, forKey: .urlToImage)
        author = try values.decodeIfPresent(String.self, forKey: .author)
    }
}
