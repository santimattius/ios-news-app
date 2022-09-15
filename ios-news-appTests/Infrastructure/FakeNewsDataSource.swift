//
//  FakeNewsDataSource.swift
//  ios-news-appTests
//
//  Created by Santiago Mattiauda on 9/9/22.
//

import Foundation

final class FakeNewsDataSource: NewsDataSource {
    func everything(text: String) async -> Result<NewsReponseDto, NetworkError> {
        let filePath = "response"
        let data = JsonLoader.loadJsonDataFromFile(filePath)
        if let json = data {
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let result = try decoder.decode(NewsReponseDto.self, from: json)
                return Result.success(result)
            } catch _ as NSError {
                return Result.failure(NetworkError.serviceNotFound(message: "Mock not found"))
            }
        }
        return Result.failure(NetworkError.serviceNotFound(message: "Mock not found"))
    }

    func topHeadlines() async -> Result<NewsReponseDto, NetworkError> {
        let filePath = "response"
        let data = JsonLoader.loadJsonDataFromFile(filePath)
        if let json = data {
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let result = try decoder.decode(NewsReponseDto.self, from: json)
                return Result.success(result)
            } catch _ as NSError {
                return Result.failure(NetworkError.serviceNotFound(message: "Mock not found"))
            }
        }
        return Result.failure(NetworkError.serviceNotFound(message: "Mock not found"))
    }
}
