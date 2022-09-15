//
//  ContentView.swift
//  ios-arch-template
//
//  Created by Santiago Mattiauda on 21/11/21.
//

import SwiftUI

struct MainView: View {

    private let topHeadlineViewModel: TopHeadlinesViewModel = DependencyProvider.shared.provideTopHeadlineViewModel()
    private let everythingViewModel: EverythingViewModel = DependencyProvider.shared.provideEverythingViewModel()

    var body: some View {
        HomeView().environmentObject(topHeadlineViewModel).environmentObject(everythingViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
