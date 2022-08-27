//
//  Double+public extension.swift
//  Cinder
//
//  Created by TriBQ on 27/08/2022.
//

import Foundation

public extension Double {
    private var usLocale: Locale {
        Locale(identifier: "en_US")
    }

    /// Convert a double to a string
    var asString: String { "\(self)" }

    /// Convert a double to data
    var asData: Data? { asString.asData }

    /// Format a double as a location specific currency
    var asCurrency: String? {
        let formatter = NumberFormatter()
        formatter.locale = usLocale
        formatter.numberStyle = .currency
        return formatter.string(from: self as NSNumber)
    }

    /// Truncate the number to no decimal places if the remainder is 0
    var formatDecimals: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 1
        numberFormatter.minimumFractionDigits = 0
        return numberFormatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }

    var format2Decimals: String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 2
        numberFormatter.minimumFractionDigits = 2
        return numberFormatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }

}
