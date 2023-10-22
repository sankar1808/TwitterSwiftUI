//
//  UserCell.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 21/10/23.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing: 12) {
            Image("venom-10")
                .resizable()
                .scaledToFill().clipped()
                .frame(width: 56, height: 56)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("batman")
                    .font(.system(size: 14, weight: .semibold))
                
                Text("Eddie Brock")
                    .font(.system(size: 14))
            }
            .foregroundColor(.black)
        }
    }
}

#Preview {
    UserCell()
}
