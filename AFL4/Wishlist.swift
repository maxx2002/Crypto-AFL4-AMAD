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
                HStack(alignment: .top) {
                    Text("My Wishlist")
                }
                List{
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Wishlist_Previews: PreviewProvider {
    static var previews: some View {
        Wishlist()
    }
}
