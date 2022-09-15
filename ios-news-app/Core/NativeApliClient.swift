//
//  NativeApliClient.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import Foundation

final class NativeApiClient: ApiClient {

    func get<T>(type: T.Type, url: URL, headers: Headers) async throws -> T where T: Decodable {

        var urlRequest = URLRequest(url: url)

        headers.forEach { key, value in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }

        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(T.self, from: data)
    }
}
