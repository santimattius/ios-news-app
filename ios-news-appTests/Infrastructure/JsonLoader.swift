//
//  MockResponse.swift
//  ios-news-appTests
//
//  Created by Santiago Mattiauda on 6/9/22.
//

import Foundation

class JsonLoader {

    static func loadJsonDataFromFile(_ path: String) -> Data? {
        let bundle = Bundle(for: JsonLoader.self)
        if let fileUrl = bundle.url(forResource: path, withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileUrl)
                return data as Data
            } catch {
                return nil
            }
        }
        return nil
    }
}
