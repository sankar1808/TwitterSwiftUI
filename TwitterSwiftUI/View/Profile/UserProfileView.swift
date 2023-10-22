//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 21/10/23.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedFilter: TweetFilterOptions = .tweets
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter)
                    .padding()
                
                ForEach(0..<9) { tweet in
                    TweetCell()
                }
            }
            .navigationTitle("batman")
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

#Preview {
    UserProfileView()
}
