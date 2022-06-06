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
                        Text("John Doe").font(.title).bold()
                        Text("Welcome back").foregroundColor(.gray)
                    }.padding()
                    Spacer()
                }
                
                NavigationLink{
                    Profile()
                } label:{
                    HStack {
                        Spacer()
                        Image("Group 1849").resizable().scaledToFit()
                        Spacer()
                    }
                    
                }
                
                HomeStatView()
                
                HStack{
                    Text("Top 10 Cryptocurrency").font(.headline)
                    Spacer()
                }.padding()
                
                List{
                    ForEach(vm.allCoins.prefix(10)){coin in
                        CryptoRow(coin: coin, showHoldingsColumn: false)
                                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                    }
                }
                .listStyle(PlainListStyle())
                
                .navigationBarHidden(true)
            }
            
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension Home {
    private var statShow: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
    }
}
