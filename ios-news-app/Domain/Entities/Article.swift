//
//  Article.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

struct Article: Equatable, Hashable, Identifiable {
    let id = UUID()
    let author: String?
    let title, articleDescription: String
    let url: String
    let urlToImage: String?
    let publishedAt: Date
    let content: String
}
