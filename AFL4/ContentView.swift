//
//  ContentView.swift
//  AFL4
//
//  Created by Macbook Pro on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home()
                .tabItem() {
                    Image("Home")
                    Text("Home")
                }
            Market()
                .tabItem() {
                    Image("Market")
                    Text("Market")
                }
            Wishlist()
                .tabItem() {
                    Image("Wishlist")
                    Text("Wishlist")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
