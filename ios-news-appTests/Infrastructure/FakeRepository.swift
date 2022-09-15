//
//  FakeRepository.swift
//  ios-news-appTests
//
//  Created by Santiago Mattiauda on 13/9/22.
//

import Foundation

final class FakeRepository: NewsRepository {

    private let delegate: NewsRepository

    init(dataSource: NewsDataSource) {
        self.delegate = NewsRepositoryImpl(dataSource: dataSource)
    }

    func everything(text: String) async -> [Article] {
        return await self.delegate.everything(text: text)
    }

    func topHeadlines() async -> [Article] {
        return await self.delegate.topHeadlines()
    }

}
