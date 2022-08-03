//
//  Converters.swift
//  UnitTestDemo
//
//  Created by Надежда on 2022-08-03.
//

import Foundation

class Converters {
    func convertEuroToUSD(euro: String) -> String {
        let usdRate = 1.08
        let euroValue = Double(euro) ?? 0
        
        if euroValue <= 0 {
            return "Please enter a positive number"
        } else if euroValue >= 1000000 {
            return "Value too big to convert!"
        } else {
            return "$\(String(format: "%.2f", euroValue * usdRate))"
        }
    }
}
