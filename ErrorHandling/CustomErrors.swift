//
//  CustomErrors.swift
//  CryptoLightUpdated
//
//  Created by Richard Price on 13/12/2022.
//

import Foundation

enum RPError: String, Error {
    case networkError = "sorry a network error occured"
}
typealias News = Result<[NewsArticles], RPError>
