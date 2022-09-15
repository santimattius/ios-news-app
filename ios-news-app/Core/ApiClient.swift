//
//  ApiClient.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation
import Combine

protocol ApiClient: AnyObject {

    typealias Headers = [String: Any]

    func get<T>(type: T.Type, url: URL, headers: Headers) async throws -> T where T: Decodable

}
