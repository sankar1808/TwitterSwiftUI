//
//  SearchView.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 21/10/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    var body: some View {
       
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading) {
                ForEach(0..<10) { _ in
                    HStack{ Spacer()}
                    NavigationLink(
                        destination: UserProfileView(),
                        label:{
                            UserCell()
                    })
                    UserCell()
                }
            }.padding(.leading)
            
        }
        .navigationTitle("Search")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SearchView()
}
