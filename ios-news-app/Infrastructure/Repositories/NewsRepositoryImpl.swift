//
//  NewsRepositoryImpl.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

final class NewsRepositoryImpl: NewsRepository {

    private let dataSource: NewsDataSource

    init(dataSource: NewsDataSource) {
        self.dataSource = dataSource
    }

    func everything(text: String) async -> [Article] {
        let result = await dataSource.everything(text: text)
        switch result {
        case .success(let data):
            return data.articles.map { $0.asDomain() }
        default:
            return []
        }
    }

    func topHeadlines() async -> [Article] {
        let result = await dataSource.topHeadlines()
        switch result {
        case .success(let data):
            return data.articles.map { $0.asDomain() }
        default:
            return []
        }
    }
}

extension ArticleDto {
    func asDomain() -> Article {
        return Article(
            author: self.author,
            title: self.title,
            articleDescription: self.articleDescription ?? "",
            url: self.url,
            urlToImage: self.urlToImage,
            publishedAt: self.publishedAt,
            content: self.content ?? ""
        )
    }
}
