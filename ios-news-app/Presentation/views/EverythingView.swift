//
//  EverythingView.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 29/8/22.
//

import SwiftUI

struct EverythingView: View {

    @ObservedObject var everythingViewModel: EverythingViewModel
    @State var searchText = ""
    @State var searching = false

    @Binding var path: NavigationPath

    var body: some View {
        VStack(alignment: .leading) {
            SearchBarView(searchText: $searchText, searching: $searching).onChange(of: searching) { text in
                if !text && !searchText.isEmpty {
                    everythingViewModel.find(text: searchText)
                }
            }
            List(everythingViewModel.articles) { article in
                ArticleView(article: article)
                .listRowSeparator(.hidden)
                .onTapGesture {
                    path.append(article)
                }
            }
            .listStyle(PlainListStyle())
            .toolbar {
                if searching {
                    Button("Cancel") {
                        searchText = ""
                        withAnimation {
                           searching = false
                           UIApplication.shared.dismissKeyboard()
                        }
                    }
                }
            }
            .gesture(DragGesture().onChanged({ _ in
                UIApplication.shared.dismissKeyboard()
            }))
        }
    }
}
