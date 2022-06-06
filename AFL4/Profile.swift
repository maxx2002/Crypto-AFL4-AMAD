//
//  Profile.swift
//  AFL4
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Profile").font(.title2).bold()
                
                Image("Vector-3").resizable().frame(width: 150, height: 150).padding()
                
                Text("John Doe").font(.largeTitle).bold().padding()
                Text("johndoe@gmail.com").font(.headline)
                
                HStack {
                    VStack (alignment: .leading) {
                        Text("Birthday").foregroundColor(.gray).font(.caption).bold()
                        Text("12 March")
                            .padding(.bottom).font(.headline)
                        Text("Address").foregroundColor(.gray).font(.caption).bold()
                        Text("Citraland")
                            .padding(.bottom).font(.headline)
                        Text("Phone").foregroundColor(.gray).font(.caption).bold()
                        Text("085647382918").font(.headline)
                    }
                    .padding()
                    Spacer()
                }
                Spacer()
            }
            .navigationBarHidden(true)
        }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
