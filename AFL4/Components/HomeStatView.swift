//
//  HomeStatView.swift
//  AFL4
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct HomeStatView: View {
    
    @EnvironmentObject private var vm: MarketViewModel
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width / 3)
            }
            
        }
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
    }
}

struct HomeStatView_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatView().environmentObject(dev.marketVM).previewLayout(.sizeThatFits)
    }
}
