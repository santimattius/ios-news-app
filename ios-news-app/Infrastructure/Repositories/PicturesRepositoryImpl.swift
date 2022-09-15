//
//  PicturesRepositoryImpl.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

final class PicturesRepositoryImpl: PicturesRepository {

    private let dataSource: PicturesDataSource

    init(dataSource: PicturesDataSource) {
        self.dataSource = dataSource
    }

    func getPictures() async -> [Picture] {
        return await dataSource.fetchPictures().map({item in item.asDomain()})
    }
}

extension PictureModel {
    func asDomain() -> Picture {
        return Picture(
            id: self.id,
            author: self.author,
            url: self.url,
            downloadUrl: self.downloadURL,
            width: self.width,
            height: self.height
        )
    }
}
