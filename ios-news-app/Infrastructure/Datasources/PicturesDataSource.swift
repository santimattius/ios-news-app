//
//  PicturesDataSource.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

protocol PicturesDataSource {

    func fetchPictures() async -> PicturesResponse
}

final class PicturesRemoteDataSource: PicturesDataSource {

    private let client: ApiClient

    init(client: ApiClient) {
        self.client = client
    }

    func fetchPictures() async -> PicturesResponse {
        let service = Service.pictures
        do {
            let data = try await client.get(type: PicturesResponse.self, url: service.url(apiKey: ""), headers: service.headers)
            return data
        } catch {
            return []
        }
    }
}
