//
//  NewsServices.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case serviceNotFound(message: String)
}
