//
//  SearchEverything.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

final class SearchEverything {

    private let repository: NewsRepository

    init(repository: NewsRepository) {
        self.repository = repository
    }

    func invoke(text: String) async -> [Article] {
        return await repository.everything(text: text)
    }
}
