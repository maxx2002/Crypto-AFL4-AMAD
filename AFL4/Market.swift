//
//  Market.swift
//  AFL4
//
//  Created by Macbook Pro on 31/05/22.
//

import SwiftUI

struct Market: View {
    @EnvironmentObject private var vm: MarketViewModel
    
    @State private var selectedCoin: CoinModel? = nil
    @State private var showDetailView: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                allCoinList
            }
            .background(NavigationLink(destination: DetailLoadingView(coin: $selectedCoin), isActive: $showDetailView, label: { EmptyView() })
            )
            .listStyle(PlainListStyle())
            .navigationBarHidden(true)
        }
    }
    
}

struct Market_Previews: PreviewProvider {
    static var previews: some View {
        Market()
            .environmentObject(dev.marketVM)
    }
}

extension Market{
    private var allCoinList: some View{
            VStack{
                Text("Cryptocurrency List").font(.title).bold()

                SearchBarView(searchText: $vm.searchText).padding()
                
                List{
                    ForEach(vm.allCoins){coin in
                        CryptoRow(coin: coin, showHoldingsColumn: false)
                                        .listRowInsets(.init(top: 10, leading: 0, bottom: 10, trailing: 10))
                                        .onTapGesture {
                                            segue(coin: coin)
                                        }
                    }
                }
                
            }
        
    }
    
    private func segue(coin: CoinModel) {
        selectedCoin = coin
        showDetailView.toggle()
    }
}


