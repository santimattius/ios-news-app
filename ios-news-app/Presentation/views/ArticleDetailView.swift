//
//  ArticleDetailView.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 1/9/22.
//

import SwiftUI

struct ArticleDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var selectedArticle: Article?
    var article: Article

    var body: some View {
        ScrollView {
            VStack {
                AsyncImage(
                    url: URL(string: article.urlToImage ?? ""),
                    transaction: Transaction(animation: .easeIn)) { phase in
                    switch phase {
                    case .empty:
                        ZStack {
                            Color.gray.opacity(0.1)
                            ProgressView()
                        }
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFill()
                    case .failure( _):
                        Image(systemName: "exclamationmark.icloud")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)
                    @unknown default:
                        Image(systemName: "exclamationmark.icloud")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)
                    }
                }
                .frame(
                    maxWidth: .infinity,
                    minHeight: 300
                )

                Text(article.title)
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.black)
                    .padding(4)

                Text(article.articleDescription)
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(4)
                Spacer()
                Button("show more") {
                    self.selectedArticle = article
                }.padding()
            }
        }.sheet(item: self.$selectedArticle) { art in
            SafariView(url: URL(string: art.url)!)
        }
    }
}

struct ArticleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetailView(article: Article(
            author: "authot",
            title: "Russia-Ukraine war latest: what we know on day 188 of the invasion - The Guardian",
            articleDescription: "Ukrainian troops mount long-awaited counteroffensive in Kherson; UN team en route to inspect Zaporizhzhia nuclear power plant",
            url: "url",
            urlToImage: "https://static01.nyt.com/images/2022/08/03/multimedia/03SITC-web1/03SITC-web1-facebookJumbo.jpg",
            publishedAt: Date(),
            content: "content"
        ))
    }
}
