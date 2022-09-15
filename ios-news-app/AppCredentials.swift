//
//  AppCredentials.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 3/9/22.
//

import Foundation

struct AppCredentials: Decodable {
    private enum CodingKeys: String, CodingKey {
        case apiKey
    }

    let apiKey: String

}
