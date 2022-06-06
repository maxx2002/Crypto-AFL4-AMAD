//
//  Wishlist.swift
//  AFL4
//
//  Created by Macbook Pro on 31/05/22.
//

import SwiftUI

struct Wishlist: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading) {
                List{
                    HStack {
                        Image("bitcoin").resizable().frame(width: 40, height: 40)
                        VStack (alignment: .leading) {
                            Text("Bitcoin").font(.headline)
                            Text("BTC").font(.caption).foregroundColor(.gray)
                        }
                        Spacer()
                        VStack (alignment: .trailing) {
                            Text("$29578").font(.headline)
                            Text("amount: 1.2").font(.caption).foregroundColor(.gray)
                        }
                    }
                }.listStyle(PlainListStyle()).padding(.vertical)
            }
            .navigationTitle("My Wishlist")
        }
    }
}

struct Wishlist_Previews: PreviewProvider {
    static var previews: some View {
        Wishlist()
    }
}
