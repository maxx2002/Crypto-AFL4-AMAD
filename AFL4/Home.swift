//
//  Home.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("John Doe")
            Text("Welcome back").foregroundColor(.gray)
            
            NavigationView{
                List {
                    
                }
                .navigationTitle("My Favorite Crypto")
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
