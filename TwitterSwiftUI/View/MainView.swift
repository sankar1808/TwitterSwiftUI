//
//  MainView.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 22/10/23.
//

import SwiftUI

struct MainView: View {
    
    init() {
           // Change the font size of the title bar.
           UINavigationBar.appearance().titleTextAttributes = [.font: UIFont.systemFont(ofSize: 26)]
           // Change the background color of the title bar.
           UINavigationBar.appearance().barTintColor = UIColor.white
           // Change the background color behind the title bar.
           UINavigationBar.appearance().backgroundColor = UIColor.white
           // Change the background color of the tab bar.
           UITabBar.appearance().barTintColor = UIColor.white
           // Change the background color behind the tab bar.
           UITabBar.appearance().backgroundColor = UIColor.white
       }
    
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                ConversationsView()
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Messages")
                    }
            }
            // Change the color of the selected icon to blue.
            .accentColor(.blue)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            
            .navigationBarItems(
                                    leading: Image("batman")
                                        .resizable()
                                        .overlay(
                                            Circle().stroke(Color.gray, lineWidth: 1))
                                        .frame(width: 30, height: 30)
                                        .clipShape(Circle()),
                                    trailing: HStack{
                                        Image(systemName: "")
                                    }
                                    .padding(.bottom, 10)
                                )
        }
    }
}

#Preview {
    MainView()
}
