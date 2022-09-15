//
//  FailNewsDataSource.swift
//  ios-news-appTests
//
//  Created by Santiago Mattiauda on 13/9/22.
//

import Foundation

final class FailNewsDataSource: NewsDataSource {
    func everything(text: String) async -> Result<NewsReponseDto, NetworkError> {
        return Result.failure(NetworkError.serviceNotFound(message: "Service not found"))
    }

    func topHeadlines() async -> Result<NewsReponseDto, NetworkError> {
        return Result.failure(NetworkError.serviceNotFound(message: "Service not found"))
    }
}
