//
//  AppDelegate.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 3/9/22.
//

import Foundation
import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        let appCredentials = readAppCredentials()
        DependencyProvider.shared.setAppCredentials(credentials: appCredentials)
        return true
    }

    func readAppCredentials() -> AppCredentials {
        let url = Bundle.main.url(forResource: "Credentials", withExtension: "plist")!
        let data = try? Data(contentsOf: url)
        if let currentData = data {
            let decoder = PropertyListDecoder()
            if let appCredentials = try? decoder.decode(AppCredentials.self, from: currentData) {
                return appCredentials
            }
        }
        return AppCredentials(apiKey: "EMPTY")
    }
}
