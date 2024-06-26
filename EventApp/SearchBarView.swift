import SwiftUI

struct SearchBarView: View {
    @State private var isSearchBarVisible = false
    @State private var searchText = ""

    var body: some View {
        VStack {
            HStack {
                Spacer()
                if isSearchBarVisible {
                    HStack {
                        TextField("Search...", text: $searchText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal)

                        Button(action: {
                            withAnimation {
                                isSearchBarVisible = false
                                searchText = ""
                            }
                        }) {
                            Text("Cancel")
                                .padding(.trailing)
                        }
                    }
                    .transition(.scale)
                    .animation(.easeOut, value: isSearchBarVisible)
                } else {
                    Button(action: {
                        withAnimation {
                            isSearchBarVisible = true
                        }
                    }) {
                        Image(systemName: "magnifyingglass")
                            .padding()
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
