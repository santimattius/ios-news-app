//
//  SearchView.swift
//  ios-news-app
//
//  Created by Santiago Mattiauda on 31/8/22.
//

import SwiftUI

struct SearchBarView: View {

    @Binding var searchText: String
    @Binding var searching: Bool

    var body: some View {
        ZStack {
            Rectangle()
             .foregroundColor(Color("LightGray"))
            HStack {
                Image(systemName: "magnifyingglass")
                TextField("Search ..", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
            }
            .foregroundColor(.gray)
            .padding(.leading, 13)
        }
        .frame(height: 40)
        .cornerRadius(13)
        .padding()
    }
}

extension UIApplication {
     func dismissKeyboard() {
         sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
     }
}
