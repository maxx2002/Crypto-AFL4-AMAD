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
                }
            Market()
                .tabItem() {
                    Image("Market")
                }
            Wishlist()
                .tabItem() {
                    Image("Wishlist")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
