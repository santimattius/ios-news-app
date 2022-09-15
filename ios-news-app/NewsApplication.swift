//
//  ios_arch_templateApp.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import SwiftUI
import Foundation

@main
struct NewsApplication: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
