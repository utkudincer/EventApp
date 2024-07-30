import SwiftUI

let images = ["SliderImage1", "SliderImage1"]

struct DiscoverView: View {
    var body: some View {
        VStack {
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
                                    HStack {
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
            .padding(.top, 10)
        }
        .navigationTitle("Keşfet")
        .toolbar {
            ToolbarItemGroup(placement: .topBarTrailing) {
                QRSearchbar()
            }
        }
    }
}

struct QRSearchbar: View {
    @State private var showSearchBar = false
    @State private var showNotifications = false
    @State private var showQRScanner = false

    var body: some View {
        HStack(spacing: 10) {
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

#Preview {
   ContentView()
}
