//
//  CryptoRow.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct CryptoRow: View {
    
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack {
            CoinImageView(coin: coin)
                .frame(width: 35, height: 35)
            VStack (alignment: .leading) {
                Text(coin.name).font(.headline)
                Text(coin.symbol.uppercased()).font(.caption).foregroundColor(.gray)
            }
            
            Spacer()
            
            if showHoldingsColumn{
                VStack(alignment: .trailing) {
                    Text(coin.currentHoldingsValue.asCurrencyWith4Decimals()).bold()
                    Text((coin.currentHoldings ?? 0).asNumberString())
                }
            }
            
            VStack (alignment: .trailing) {
                Text("\(coin.currentPrice.asCurrencyWith4Decimals())")
                Text("\(coin.priceChangePercentage24H?.asPercentString() ?? "")")
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
        CryptoRow(coin: dev.coin, showHoldingsColumn: true)
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
