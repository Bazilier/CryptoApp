//
//  File.swift
//  CryptoApp
//
//  Created by Cyril Vasilyev on 7.12.2024.
//

import Foundation

extension Double {
    
    /// Converts a Double to Currency with 2 decimal places
    /// ```
    /// Convert 1234.56 $1234,56
    /// ```
    private var currencyFormatter2: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = false
        formatter.numberStyle = .currency
        //        formatter.locale = .current
                formatter.currencyCode = "usd"
                formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    /// Converts a Double to Currency as a String with 2-6 decimal places
    /// ```
    /// Convert 1234.56 "$1234,56"
    /// Convert 12.3456 "$12.3456"
    /// Convert 0.123456 "$0,123456"
    /// ```
    
    func asCurrencyWith2Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter2.string(from: number) ?? "$0.00"
    }
    
    /// Converts a Double to Currency with 2-6 decimal places
    /// ```
    /// Convert 1234.56 $1234,56
    /// ```
    private var currencyFormatter: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = false
        formatter.numberStyle = .currency
        //        formatter.locale = .current
                formatter.currencyCode = "usd"
                formatter.currencySymbol = "$"
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 6
        return formatter
    }
    
    /// Converts a Double to Currency as a String with 2-6 decimal places
    /// ```
    /// Convert 1234.56 "$1234,56"
    /// Convert 12.3456 "$12.3456"
    /// Convert 0.123456 "$0,123456"
    /// ```
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter.string(from: number) ?? "$0.00"
    }
    
    /// Converts a Double into string representation
    /// ```
    /// Convert 1.23456 "1.23"
    /// ```
    
    func asNumberString() -> String {
        return String(format: "%.2f", self)
    }
    
    /// Converts a Double into string representation with % symbol
    /// ```
    /// Convert 1.23456 "1.23%"
    /// ```
    
    func asPercentString() -> String {
        return asNumberString() + "%"
    }
}
