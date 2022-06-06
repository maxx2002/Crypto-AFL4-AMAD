//
//  StatisticView.swift
//  AFL4
//
//  Created by Macbook Pro on 05/06/22.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        VStack (alignment: .leading, spacing: 4) {
            Text(stat.title).font(.caption).foregroundColor(.gray)
            Text(stat.value).font(.headline)
            
            HStack {
//                Image(systemName: "triangle.fill").font(.caption2).rotationEffect(Angle(degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                Text(stat.percentageChange?.asPercentString() ?? "").font(.caption).bold()
            }
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ? .green : .red)
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StatisticView(stat: dev.state1).previewLayout(.sizeThatFits)
            StatisticView(stat: dev.state2).previewLayout(.sizeThatFits)
        }
        
    }
}
