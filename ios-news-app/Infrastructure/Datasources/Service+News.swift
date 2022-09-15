//
//  NewsServices.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

extension Service {

    static func everything(query: String) -> Self {
        return Service(path: "/everything", queryItems: [URLQueryItem(name: "q", value: query)])
    }

    static func topHeadlines(country: String = "us") -> Self {
        return Service(path: "/top-headlines", queryItems: [URLQueryItem(name: "country", value: country)])
    }
}
