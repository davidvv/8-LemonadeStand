//
//  GameBrain.swift
//  LemonadeStand
//
//  Created by David Vences Vaquero on 3/5/15.
//  Copyright (c) 2015 David. All rights reserved.
//

import Foundation

class GameBrain{
    
    class func acidityCalculator(mixLemon: Int, mixIce: Int) -> String {
        var acidityMix: Double = Double(mixIce) / Double(mixLemon)
        var acidityMixString: String?
        if acidityMix < 0.4 {
            acidityMixString = "acid"
            let acidityRange = 1
        }
        else if acidityMix > 0.6 {
            acidityMixString = "diluted"
            let acidityRange = 3
        }
        else {
            acidityMixString = "medium"
            let acidityRange = 2
        }
        return acidityMixString!
    }
    
    class func acidityMatch(customers:[Customer], acidityMixString: String) -> Int {
        var customers = Factory.customerArrayCreator()
        var buyers = 0
        for var index = 0; index < customers.count; index++ {
            if customers[index].tasteRangeString == acidityMixString {
                buyers += 1
            }
        }
        return buyers
    }
}