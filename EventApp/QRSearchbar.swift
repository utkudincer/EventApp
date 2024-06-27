//
//  SwiftUIView.swift
//  EventApp
//
//  Created by Eray on 26.06.2024.
//

import SwiftUI

struct QRSearchbar: View {
        @State private var showSearchBar = false
        @State private var showNotifications = false
        @State private var showQRScanner = false
    var body: some View {
        NavigationView{
            VStack{
                HStack(spacing:20){
                    Button(action: {
                                            showSearchBar.toggle()
                                        }) {
                                            Image(systemName: "magnifyingglass")
                                        }
                                        .sheet(isPresented: $showSearchBar) {
                                            SearchView()
                                        }
                                        
                                        Button(action: {
                                            showNotifications.toggle()
                                        }) {
                                            Image(systemName: "bell")
                                        }
                                        .sheet(isPresented: $showNotifications) {
                                            NotificationsView()
                                        }
                                        Button(action: {
                                                showQRScanner.toggle()
                                            }) {
                                                Image(systemName: "qrcode")
                                            }
                                            .sheet(isPresented: $showQRScanner) {
                                                QRScannerView()
                                            }
                }
            }
        }
        .padding(.top, 8.0)
        .shadow(radius: 5)
        
            
    }
}


#Preview {
    QRSearchbar()
}
