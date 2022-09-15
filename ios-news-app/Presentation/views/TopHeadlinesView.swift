//
//  TopHeadlinesView.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import SwiftUI

struct TopHeadlinesView: View {

    @ObservedObject var topHeadline: TopHeadlinesViewModel
    @Binding var path: NavigationPath

    var body: some View {
        List(topHeadline.articles) { article in
            ArticleView(article: article)
            .listRowSeparator(.hidden)
            .onTapGesture {
                path.append(article)
            }
        }
        .listStyle(PlainListStyle())
        .onAppear {
            topHeadline.load()
        }
    }
}
