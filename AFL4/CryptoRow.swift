//
//  CryptoRow.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct CryptoRow: View {
    
    let coin: CoinModel
    
    var body: some View {
        HStack {
//            landmark.image
//                .resizable()
//                .frame(width: 50, height: 50)
            Circle()
                .frame(width: 35, height: 35)
            VStack (alignment: .leading) {
                Text(coin.name).font(.headline)
                Text(coin.symbol.uppercased()).font(.caption).foregroundColor(.gray)
            }
            
            Spacer()
            
            VStack (alignment: .trailing) {
                Text("\(coin.currentPrice)")
                Text("\(coin.priceChangePercentage24H ?? 0)%")
                    .foregroundColor(
                        (coin.priceChangePercentage24H ?? 0) >= 0 ?
                            .green :
                                .red
                        
                    )
            }
            
        }.padding(.horizontal)
    }
}

struct CryptoRow_Previews: PreviewProvider {
    static var previews: some View {
        CryptoRow(coin: dev.coin)
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
