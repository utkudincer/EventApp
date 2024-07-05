import SwiftUI

struct EventView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemBackground).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer().frame(height: 20) // Bu boşluk, dikdörtgeni yukarı taşır
                    
                    NavigationLink(destination: SecondView()) {
                        HStack () {
                            Text("Etkinlik Oluştur")
                                .font(.title)
                                .fontWeight(.light)
                                .foregroundColor(Color.orange)
                                .multilineTextAlignment(.center)
                                
                                
                            
                            
                        }
                        .padding()
                        .frame(width: 350, height: 100)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .shadow(radius: 4, x: 0, y: 0.5)
                    }
                    .padding()
                    
                    Spacer() // Geri kalan alanı doldurur
                }
                
                VStack {
                    Spacer().frame(height: 135) // Bu boşluk, dikdörtgeni yukarı taşır
                    
                    NavigationLink(destination: SecondView()) {
                        HStack (spacing: 45) {
                            Text("Kayıtlı Olduğum Etkinlikler")
                                .font(.title)
                                .fontWeight(.light)
                                .foregroundColor(Color.orange)
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .frame(width: 350, height: 100)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
                        .shadow(radius: 4, x: 0, y: 0.5)
                    }
                    .padding()
                    
                    Spacer() // Geri kalan alanı doldurur
                }
            }
            .navigationTitle("Etkinlikler")
        }
    }
}

struct SecondView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Spacer().frame(height: 50) // Bu boşluk, başlığı biraz yukarı taşır
            
            Text("İkinci Ekran")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "arrow.left")
                    Text("Geri Dön")
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                .cornerRadius(8)
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.white)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
