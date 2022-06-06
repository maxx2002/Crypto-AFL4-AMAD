//
//  CoinDetail.swift
//  AFL4
//
//  Created by Macbook Pro on 03/06/22.
//

import SwiftUI

struct DetailLoadingView: View {
    
    @Binding var coin: CoinModel?
    
    var body: some View {
        ZStack {
            if let coin = coin {
                CoinDetail(coin: coin)
            }
        }
        
    }
}

struct CoinDetail: View {
    
    
    
    @StateObject private var vm: DetailViewModel
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    private let spacing: CGFloat = 30
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
    }
    
    var body: some View {
        VStack {
            HStack {
                VStack (alignment: .leading) {
                    Text(vm.coin.name).font(.largeTitle).bold()
                }
                Spacer()
                Text(vm.coin.symbol.uppercased()).foregroundColor(.gray)
                CoinImageView(coin: vm.coin).frame(width: 30, height: 30)
            }.padding()
            
            ScrollView {
                VStack {
                    ChartView(coin: vm.coin)
                    VStack (spacing: 20) {

                        Text("Overview")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        
                        LazyVGrid(
                            columns: columns,
                            alignment: .leading,
                            spacing: spacing,
                            pinnedViews: [],
                            content: {
                                ForEach(vm.overviewStatistic) { stat in
                                    StatisticView(stat: stat)
                                }
                        })
                        
                        Text("Additional Information")
                            .font(.title)
                            .bold()
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        
                        LazyVGrid(
                            columns: columns,
                            alignment: .leading,
                            spacing: spacing,
                            pinnedViews: [],
                            content: {
                                ForEach(vm.additionalStatistic) { stat in
                                    StatisticView(stat: stat)
                                }
                        })
                    }
                    .padding()
                }
                
            }
            
            Button("Add to Wishlist"){
                
                
            }.padding()
        }
        
        
    }
}

struct CoinDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CoinDetail(coin: dev.coin)
            
            .navigationBarHidden(true)
        }
    }
}
