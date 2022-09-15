//
//  ArticleView.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import SwiftUI

struct ArticleView: View {
    var article: Article
    var body: some View {
        VStack(alignment: .leading) {
            let imageUrl = article.urlToImage ?? ""
            if !imageUrl.isEmpty {
                AsyncImage(url: URL(string: article.urlToImage ?? "")) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
            }

            Text(article.title)
                .font(.system(.body, design: .rounded))
                .bold()
                .accessibilityLabel(Text(article.title))
                .accessibilityIdentifier(article.title)
                .padding(2)
            Text(article.articleDescription)
                .font(.system(.body, design: .rounded))
                .foregroundColor(.secondary)
                .padding(2)
            
            Text(article.publishedAt.toString())
                .font(.system(.footnote, design: .rounded))

            if let author = article.author {
                Text(author)
                    .font(.system(.subheadline, design: .rounded))
                    .bold()
                    .foregroundColor(.white)
                    .padding(3)
                    .background(RoundedRectangle(cornerRadius: 2))
                    .foregroundColor(.cyan)
            }
        }
        .cornerRadius(4)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article(
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
