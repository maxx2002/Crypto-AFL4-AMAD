//
//  Home.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject private var vm: MarketViewModel
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("John Doe")
                        Text("Welcome back").foregroundColor(.gray)
                    }.padding(.horizontal)
                    Spacer()
                }
                
//               HomeStatView
                
                HStack{
                    Text("My Favorite Crypto")
                    Spacer()
                    Button("View all"){
                        
                    }
                }.padding()
                
                ScrollView{
                    HStack{
                        
                    }
                    
                }
                List{
                    
                }
                
                
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
