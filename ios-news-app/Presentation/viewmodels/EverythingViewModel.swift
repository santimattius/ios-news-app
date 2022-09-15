//
//  EverythingViewModel.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

final class EverythingViewModel: ObservableObject {

    @Published public var articles: [Article] = []

    private let search: SearchEverything

    init(search: SearchEverything) {
        self.search = search
    }

    func find(text: String) {
        Task.init {
            let result = await search.invoke(text: text)
            await MainActor.run {
                self.articles = result
            }
        }
    }
}
