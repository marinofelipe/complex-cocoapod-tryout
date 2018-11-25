//
//  String.swift
//  GroceryList
//
//  Created by Felipe Lefèvre Marino on 4/3/18.
//  Copyright © 2018 Felipe Lefèvre Marino. All rights reserved.
//

import UIKit

protocol CurrencyString {
    mutating func addDecimalSeparator()
    func numeralFormat() -> String
    func representsZero() -> Bool
}

//String Currency Extension
extension String: CurrencyString {
    
    //moves separator one character to the right. Keeps currency formatted
    mutating func addDecimalSeparator() {
        guard count >= 2 else { return }
        let lastTwoChars = self[index(endIndex, offsetBy: -2)..<endIndex]
        replaceSubrange(index(endIndex, offsetBy: -2)..<endIndex, with: "." + lastTwoChars)
    }
    
    func numeralFormat() -> String {
        return replacingOccurrences(of:"[^0-9]", with: "", options: .regularExpression)
    }
    
    func representsZero() -> Bool {
        return numeralFormat().replacingOccurrences(of: "0", with: "").count == 0
    }
}
