import SwiftUI

let images = ["SliderImage1", "image2"]

struct DiscoverView: View {
    @State private var titleOffset: CGFloat = -250 // Başlık konumunu ayarlamak için

    var body: some View {
        NavigationView {
            ZStack {
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
                .offset(CGSize(width: 3, height:-85))
                // Custom title with offset
                Text("Keşfet")
                    .font(.largeTitle)
                    .bold()
                    .offset(x: -120 ,y:-320) // Adjust this value to position the title
                    .zIndex(1)
            }
            .navigationBarHidden(true) // Hide the default navigation bar title
        }
    }
}

#Preview {
    ContentView()

}
