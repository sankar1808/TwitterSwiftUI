//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 21/10/23.
//

import SwiftUI

struct ContentView: View {
    // Preserves the horizontal offset of the screen in the xOffset variable.
    var screenWidth = UIScreen.main.bounds.width
    @State var xOffset: CGFloat = 0
    @State var currentXOffset: CGFloat = 0
    @Environment(\.colorScheme) var scheme
        
        var body: some View {
            
            GeometryReader { reader in
                HStack(spacing: 0) {
                    MenuView()
                        .frame(width: screenWidth * 0.8)
                    
                Divider()
                MainView()
                    // Width should be 100% of the screen size
                    .frame(width: screenWidth)
                }
                .onAppear {
                    xOffset = -screenWidth * 0.8 // hides the menu
                    currentXOffset = xOffset
                }
                .offset(x: xOffset)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            if value.translation.width > 0 && xOffset != 0 { // left to right
                                withAnimation {
                                    xOffset = currentXOffset + value.translation.width
                                }
                            } else if value.translation.width < 0 && xOffset != -screenWidth * 0.8 {
                                withAnimation {
                                    xOffset = currentXOffset + value.translation.width
                                }
                            }
                        })
                        .onEnded({ value in
                            if value.translation.width > 0 { // left to right
                                withAnimation {
                                    xOffset = 0
                                }
                            } else {
                                withAnimation {
                                    xOffset = -screenWidth * 0.8
                                }
                            }
                            currentXOffset = xOffset
                        })
                )
            }
        }
}

#Preview {
    Group {
        ContentView()
        
        ContentView()
            .environment(\.locale, .init(identifier: "pt-BR"))
    }
}
