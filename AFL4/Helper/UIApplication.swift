//
//  UIApplication.swift
//  AFL4
//
//  Created by Macbook Pro on 05/06/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
