//
//  MyFavoriteCard.swift
//  AFL4
//
//  Created by Macbook Pro on 01/06/22.
//

import SwiftUI

struct MyFavoriteCard: View {
    var body: some View {
        VStack {
            HStack {
    //            landmark.image
    //                .resizable()
    //                .frame(width: 50, height: 50)
                VStack(alignment: .leading) {
                    Text("Bitcoin")
                    Text("BTC").foregroundColor(.gray)
                }
                Spacer()
                
            }.padding()
            
            HStack {
                Text("32,468").font(.title)
                Spacer()
                Text("1,83%").foregroundColor(.red)
            }.padding(.horizontal)
        }.cornerRadius(35)
        
    }
}

struct MyFavoriteCard_Previews: PreviewProvider {
    static var previews: some View {
        MyFavoriteCard()
            .previewLayout(.fixed(width: 200, height: 150))
    }
}
