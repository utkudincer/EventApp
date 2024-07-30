//
//  EventAppApp.swift
//  EventApp
//
//  Created by Eren Utku Dinçer on 24.06.2024.
//

import SwiftUI

@main
struct EventAppApp: App {
    @State private var showSplash = true
    @State private var opacity: Double = 0.0

    var body: some Scene {
        WindowGroup {
            ZStack {
                if showSplash {
                    SplashView()
                        .transition(.opacity)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                withAnimation(.easeIn(duration: 1.0)) {
                                    showSplash = false
                                }
                            }
                        }
                } else {
                    ContentView()
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.0)) {
                                opacity = 1.0
                            }
                        }
                }
            }
        }
    }
}
