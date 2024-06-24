//
//  ContentView.swift
//  EventApp
//
//  Created by Eren Utku Dinçer on 24.06.2024.
//

import SwiftUI

enum Tab {
    case discover, events, network, games, profile
}

struct ContentView: View {
    @State private var selectedTab: Tab = .discover
    
    var body: some View {
        NavigationStack {
            VStack {
                switch selectedTab {
                case .discover:
                    DiscoverView()
                case .events:
                    EventView()
                case .network:
                    NetworkView()
                case .games:
                    GamesView()
                case .profile:
                    ProfileView()
                }
                
                Spacer()
                CustomTabBar(selectedTab: $selectedTab)
                    .padding(.horizontal)
                    .padding(.bottom, -10)
            }
        }
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    var body: some View {
        HStack(spacing: 35.0) {
            TabBarItem(iconName: "safari.fill", tab: .discover, selectedTab: $selectedTab)
            TabBarItem(iconName: "person.2.fill", tab: .events, selectedTab: $selectedTab)
            TabBarItem(iconName: "globe", tab: .network, selectedTab: $selectedTab)
            TabBarItem(iconName: "gamecontroller.fill", tab: .games, selectedTab: $selectedTab)
            TabBarItem(iconName: "person.circle.fill", tab: .profile, selectedTab: $selectedTab)
        }
        .padding()
        .background(Color.white)
        .clipShape(Capsule())
        .shadow(radius: 10)
    }
}

struct TabBarItem: View {
    let iconName: String
    let tab: Tab
    @Binding var selectedTab: Tab
    
    var body: some View {
        Button(action: {
            self.selectedTab = tab
        }) {
            Image(systemName: iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(selectedTab == tab ? .blue : .black)
        }
    }
}


#Preview {
    ContentView()
}
