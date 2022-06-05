//
//  AFL4App.swift
//  AFL4
//
//  Created by Macbook Pro on 24/05/22.
//

import SwiftUI

@main
struct AFL4App: App {
    @StateObject private var vm = MarketViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
