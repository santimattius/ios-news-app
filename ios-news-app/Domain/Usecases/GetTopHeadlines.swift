//
//  GetTopHeadlines.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

final class GetTopHeadlines {

    private let repository: NewsRepository

    init(repository: NewsRepository) {
        self.repository = repository
    }

    func invoke() async -> [Article] {
        return await repository.topHeadlines()
    }
}
