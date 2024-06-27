//
//  SearchView.swift
//  EventApp
//
//  Created by Eray on 27.06.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            TextField("Search...", text: $searchText)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Spacer()
        }
        .navigationTitle("Search")
    }
}

#Preview {
    SearchView()
}
