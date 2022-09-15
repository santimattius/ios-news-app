//
//  DependencyProvider.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

final class DependencyProvider {

    static let shared = DependencyProvider()

    private var newsDataSource: NewsDataSource? = nil
    private var appCredentials = AppCredentials(apiKey: "EMPTY")

    private init() {}

    func setAppCredentials(credentials: AppCredentials) {
        self.appCredentials = credentials
    }

    func testing(dataSource: NewsDataSource) {
        self.newsDataSource = dataSource
    }

    func provideEverythingViewModel() -> EverythingViewModel {
        return EverythingViewModel(search: provideSearchEverything())
    }

    func provideTopHeadlineViewModel() -> TopHeadlinesViewModel {
        return TopHeadlinesViewModel(get: provideGetTopHeadline())
    }

    private func provideSearchEverything() -> SearchEverything {
        return SearchEverything(repository: provideNewsRepository())
    }

    private func provideGetTopHeadline() -> GetTopHeadlines {
        return GetTopHeadlines(repository: provideNewsRepository())
    }

    private func provideNewsRepository() -> NewsRepository {
        return NewsRepositoryImpl(dataSource: provideNewsDataSource())
    }

    private func provideNewsDataSource() -> NewsDataSource {
        return self.newsDataSource ?? NewsApiDataSource(client: provideApiClient(), apiKey: appCredentials.apiKey)
    }

    private func provideApiClient() -> ApiClient {
        return NativeApiClient()
    }

}
