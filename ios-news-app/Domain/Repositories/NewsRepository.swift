//
//  NewsRepository.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

protocol NewsRepository {
    func everything(text: String) async -> [Article]
    func topHeadlines() async -> [Article]
}
