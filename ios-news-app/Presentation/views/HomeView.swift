//
//  HomeView.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var topHeadlineViewModel: TopHeadlinesViewModel
    @EnvironmentObject var everythingViewModel: EverythingViewModel

    @State var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            TabView {
                TopHeadlinesView(
                    topHeadline: self.topHeadlineViewModel,
                    path: $path
                ).tabItem {
                    Label("Top Headlines", systemImage: "list.star")
                }
                EverythingView(
                    everythingViewModel: self.everythingViewModel,
                    path: $path
                ).tabItem {
                    Label("Everything", systemImage: "magnifyingglass")
                }
            }.navigationDestination(for: Article.self) { article in
                ArticleDetailView(article: article)
            }
            .navigationTitle(Text("News"))
        }
    }
}

struct HomeView_Previews: PreviewProvider {

    static var previews: some View {
        HomeView()
            .environmentObject(DependencyProvider.shared.provideTopHeadlineViewModel())
            .environmentObject(DependencyProvider.shared.provideEverythingViewModel())
    }
}
