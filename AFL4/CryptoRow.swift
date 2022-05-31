//
//  CryptoRow.swift
//  AFL4
//
//  Created by Macbook Pro on 30/05/22.
//

import SwiftUI

struct CryptoRow: View {
    var body: some View {
        HStack {
//            landmark.image
//                .resizable()
//                .frame(width: 50, height: 50)
            Text("Bitcoin")

            Spacer()
        }
    }
}

struct CryptoRow_Previews: PreviewProvider {
    static var previews: some View {
        CryptoRow()
            .previewLayout(.fixed(width: 300, height: 60))
    }
}
