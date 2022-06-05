//
//  SearchBarView.swift
//  AFL4
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct SearchBarView: View {

    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass").foregroundColor(
                searchText.isEmpty ? .gray :
                        .black
            )
            
            TextField("Search", text: $searchText).foregroundColor(searchText.isEmpty ? .gray : .black)
                .disableAutocorrection(true)
                .overlay(Image(systemName:"xmark.circle.fill").padding().offset(x: 10).foregroundColor(.black).opacity(searchText.isEmpty ? 0.0 : 1.0).onTapGesture {
                    UIApplication.shared.endEditing()
                    searchText = ""
                }
                         
                         , alignment: .trailing
                )
        }
        .font(.headline)
        .padding()
        .background(RoundedRectangle(cornerRadius: 25).fill(.white).shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 0))
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(searchText: .constant("")).previewLayout(.sizeThatFits)
    }
}
