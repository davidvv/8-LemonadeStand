//
//  GameBrain.swift
//  LemonadeStand
//
//  Created by David Vences Vaquero on 3/5/15.
//  Copyright (c) 2015 David. All rights reserved.
//

import Foundation
import UIKit

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
        println("aciditycalculator did Run: \(acidityMixString)")
        return acidityMixString!

    }
    
    class func acidityMatch(weatherTuple:([Customer],UIImage), acidityMixString: String) -> (Int,UIImage) {
        var weatherTuple = Factory.customerArrayCreator()
        var customers = weatherTuple.0
        var weatherImage = weatherTuple.1
        
        var buyers = 0
        for var index = 0; index < customers.count; index++ {
            if customers[index].tasteRangeString == acidityMixString {
                buyers += 1
            }
        }
        println("\(buyers) customers bought lemonade")
        return (buyers, weatherImage)
    }
}