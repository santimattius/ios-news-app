//
//  TopHeadlinesViewModel.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation
import Combine

final class TopHeadlinesViewModel: ObservableObject {

    @Published public var articles: [Article] = []

    private let get: GetTopHeadlines

    init(get: GetTopHeadlines) {
        self.get = get
    }

    func load() {
        Task.init {
            let result = await get.invoke()
            await MainActor.run {
                self.articles = result
            }
        }
    }
}
