//
//  NewsApiDataSource.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 9/9/22.
//

import Foundation

// MARK: service implementation
final class NewsApiDataSource: NewsDataSource {

    private let client: ApiClient
    private let apiKey: String

    init(client: ApiClient, apiKey: String) {
        self.client = client
        self.apiKey = apiKey
    }

    func everything(text: String) async -> Result<NewsReponseDto, NetworkError> {
        let service = Service.everything(query: text)
        do {
            let data = try await client.get(
                type: NewsReponseDto.self,
                url: service.url(apiKey: self.apiKey),
                headers: service.headers
            )
            return Result.success(data)
        } catch {
            return Result.failure(NetworkError.serviceNotFound(message: "Service not found"))
        }
    }

    func topHeadlines() async -> Result<NewsReponseDto, NetworkError> {
        let service = Service.topHeadlines()
        do {
            let data = try await client.get(
                type: NewsReponseDto.self,
                url: service.url(apiKey: self.apiKey),
                headers: service.headers
            )
            return Result.success(data)
        } catch {
            return Result.failure(NetworkError.serviceNotFound(message: "Service not found"))
        }
    }
}
