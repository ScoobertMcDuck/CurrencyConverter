//
//  CurrencyLogic.swift
//  CurrencyConverter
//
//  Created by Charlotte Varnum on 2/17/24.
//

import Foundation

struct CurrencyLogic {
    
    // Variables
    var EUR : Double = 0
    var GBP : Double = 0
    var CD : Double = 0
    var JY : Double = 0
    
    // Convert to Euros
    mutating func convertToEuros (_ USDIn :Int) -> Double {
        EUR = Double(USDIn) * 0.93
        EUR = round(EUR * 100)/100.0
        return EUR
    }
    
    // Convert to GB Pounds
    mutating func convertToPounds (_ USDIn :Int) -> Double {
        GBP = Double(USDIn) * 0.79
        GBP = round(GBP * 100)/100.0
        return GBP
    }
    
    // Convert to Canadian Dollars
    mutating func convertToCanadianDollars (_ USDIn :Int) -> Double {
        CD = Double(USDIn) * 1.35
        CD = round(CD * 100)/100.0
        return CD
    }
    
    // Convert to Japanese Yen
    mutating func convertToJapaneseYen (_ USDIn :Int) -> Double {
        JY = Double(USDIn) * 150.22
        JY = round(JY * 100)/100.0
        return JY
    }
}
