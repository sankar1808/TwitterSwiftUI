//
//  MenuItem.swift
//  TwitterSwiftUI
//
//  Created by Sankaranarayana Settyvari on 22/10/23.
//

import Foundation

struct MenuItem: Identifiable {
    let id = UUID().uuidString
    let image: String
    let name: String
}

let menuItems = [
    MenuItem(image: "person", name: "Profile"),
    MenuItem(image: "list.dash", name: "Lists"),
    MenuItem(image: "text.bubble", name: "Topics"),
    MenuItem(image: "bookmark", name: "Bookmarks"),
    MenuItem(image: "bolt", name: "Moments"),
    MenuItem(image: "star", name: "Monetization")
]
