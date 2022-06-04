//
//  Double.swift
//  AFL4
//
//  Created by Macbook Pro on 04/06/22.
//

import Foundation

extension Double {
    private var currencyFormatter3: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
//        formatter.locale = .current
//        formatter.currencyCode = "usd"
//        formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 3
        return formatter
    }
    
    func asCurrencyWith3Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter3.string(from: number) ?? "$0.00"
    }
}
