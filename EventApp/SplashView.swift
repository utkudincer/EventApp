//
//  SplashView.swift
//  EventApp
//
//  Created by Eren Utku Dinçer on 30.07.2024.
//

import SwiftUI

struct SplashView: View {
    @State var index = 0
    let colors: [Color] = [.green, .pink, .purple]
    let titles: [String] = ["EXPERIENCE", "SHARE", "EVENT APP"]
    @State var timer: Timer? = nil

    var body: some View {
        Text(titles[index])
            .font(.system(size: 40, weight: .thin))
            .contentTransition(.numericText())
            .frame(width: 250)
            .shadow(color: colors[index], radius: 5)
            .shadow(color: colors[index], radius: 5)
            .shadow(color: colors[index], radius: 50)
            .onAppear {
                startTimer()
            }
            .onDisappear {
                timer?.invalidate()
            }
    }

    func startTimer() {
        timer?.invalidate()
        let interval = index == 2 ? 1.0 : 0.5
        timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: false) { _ in
            withAnimation {
                index = (index + 1) % titles.count
                startTimer()
            }
        }
    }
}

#Preview {
    SplashView()
}
