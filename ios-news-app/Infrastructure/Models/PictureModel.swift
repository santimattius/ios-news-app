//
//  PictureModel.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

struct PictureModel: Codable {
    let id, author: String
    let width, height: Int
    let url: String
    let downloadURL: String

    enum CodingKeys: String, CodingKey {
        case id, author, width, height, url
        case downloadURL = "download_url"
    }
}

typealias PicturesResponse = [PictureModel]
