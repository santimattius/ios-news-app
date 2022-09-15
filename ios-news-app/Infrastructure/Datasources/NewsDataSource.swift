//
//  NewsServices.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import Foundation

protocol NewsDataSource {

    func everything(text: String) async -> Result<NewsReponseDto, NetworkError>

    func topHeadlines() async -> Result<NewsReponseDto, NetworkError>
}
