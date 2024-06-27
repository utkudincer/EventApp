//
//  NotificationsView.swift
//  EventApp
//
//  Created by Eray on 27.06.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            Text("No new notifications")
                .padding()
            Spacer()
        }
        .navigationTitle("Notifications")
    }
}

#Preview {
    NotificationsView()
}
