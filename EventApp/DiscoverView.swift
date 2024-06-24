//
//  DiscoverView.swift
//  EventApp
//
//  Created by Eren Utku Dinçer on 24.06.2024.
//

import SwiftUI

let images = ["SliderImage1", "image2"]

struct DiscoverView: View {
    var body: some View {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(0..<5) { index in
                        VStack {
                            Image("SliderImage1")
                                .resizable()
                                .frame(width: 300, height: 300)
                                .cornerRadius(18.0)
                            
                            VStack(alignment: .leading) {
                                GroupBox(label:
                                        Text("IEEE Türkiye Xtreme Kampı' 24")
                                    ) {
                                    HStack{
                                        Text("22-26 Temmuz 2024")
                                            .font(.caption)
                                    }
                                    }
                                    .background(Color.white)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(18.0)
                            .shadow(radius: 5)
                        }
                        .padding(5)
                    }
                }
                .padding(3)
            }
            .navigationTitle("Keşfet")
            .frame(maxHeight:50, alignment: .top)
    }
}


#Preview {
    ContentView()
}
