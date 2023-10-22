//
//  MenuView.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 22/10/23.
//

import SwiftUI

struct MenuView: View {
    var followerCount = 1
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    Image("batman")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color("blue"))
                    })
                }
                
                Text("Batman")
                    .font(.system(size: 17, weight: .bold))
                
                Text("@batman")
                    .foregroundColor(.gray)
                
                HStack {
                    Text("18")
                        .fontWeight(.bold)
                    
                    Text("following")
                    
                    Text("\(followerCount)")
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    Text("followers", tableName: "Plurals")
                }
                .padding(.top)
            }
            .padding(.horizontal)
            
            Divider()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 0) {
                    ForEach(menuItems) { item in
                        Button(action: {}, label: {
                            HStack(spacing: 20) {
                                Image(systemName: item.image)
                                    .frame(width: 40, height: 40)
                                    .font(.system(size: 21, weight: .semibold))
                                    .foregroundColor(Color("foreground"))
                                
                                Text(LocalizedStringKey(item.name))
                                    .foregroundColor(.primary)
                                
                                Spacer()
                            }
                            .padding()
                        })
                    }
                    
                    Divider()
                        .padding(.vertical)
                    
                    VStack(spacing: 30) {
                        Button(action: {}, label: {
                            HStack {
                                Text("Settings and Privacy")
                                
                                Spacer()
                            }
                        })
                        
                        Button(action: {}, label: {
                            HStack {
                                Text("Help center") // if it doesn't work try cleaning the project
                                
                                Spacer()
                            }
                        })
                    }
                    .foregroundColor(Color.primary)
                    .padding(.horizontal, 25)
                    .padding(.vertical, 10)
                    Spacer()
                    
                    Divider()
                }
            })
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "lightbulb")
                })
                
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "qrcode")
                })
            }
            .foregroundColor(Color("blue"))
            .font(.system(size: 21))
            .padding()
        }
        .background(Color.clear)
    }
}

#Preview {
    MenuView()
}
