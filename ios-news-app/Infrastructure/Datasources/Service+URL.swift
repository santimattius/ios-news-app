//
//  NewsServices.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

extension Service {

    func url(apiKey: String) -> URL {
        var urlComponent = URLComponents()
        urlComponent.scheme = "https"
        urlComponent.host = "newsapi.org"
        urlComponent.path = "/v2" + path
        urlComponent.queryItems = queryItems
        urlComponent.queryItems?.append(URLQueryItem(name: "apiKey", value: apiKey))
        guard let url = urlComponent.url else {
            preconditionFailure("Invalid URL components: \(urlComponent)")
        }
        return url
    }

    var headers: [String: Any] {
           return [
               "Content-Type": "application/json"
           ]
       }
}
