//
//  Factory.swift
//  LemonadeStand
//
//  Created by David Vences Vaquero on 3/5/15.
//  Copyright (c) 2015 David. All rights reserved.
//

import Foundation
import UIKit

class Factory {
 
    
    
    class func weather() -> (maxCustomers:Int, weatherImage:UIImage) {
        var maxCustomers = 10
        var customerMultiplier:Double = 1
        var weatherRandomiser = Int(arc4random_uniform(UInt32(3)))

        var weatherImage:UIImage?
        switch weatherRandomiser{
        case 0: customerMultiplier = 1.4; weatherImage = UIImage(named: "Warm")
        case 1: customerMultiplier = 0.6; weatherImage = UIImage(named: "Cold")
        case 2: customerMultiplier = 1; weatherImage = UIImage(named: "Mild")
            default: println("error")
        }
        maxCustomers = Int((Double(maxCustomers) * customerMultiplier))

        println("customerMultiplier = \(customerMultiplier)")
        return (maxCustomers, weatherImage!)
    }
    
    class func customerArrayCreator() -> ([Customer],UIImage) {
        var customers:[Customer] = []
        var weatherTuple = Factory.weather()
        var maxCustomers = weatherTuple.0
        var weatherImage = weatherTuple.1
        var customer:Customer?
        for var customerNumber = 0; customerNumber < maxCustomers; customerNumber++ {
            var customer = Factory.customerCreator()
            customers.append(customer)
            println("\(customerNumber) created")
            }
        println("\(maxCustomers) came due to weather conditions")
        return (customers,weatherImage)
    }
    
    
    
    class func customerCreator() -> Customer {

        var randomNumber = Double(Int(arc4random_uniform(UInt32(11)))) / 10
        var customer: Customer?
        if randomNumber < 0.4 {
            customer = Customer(tasteRange: 1, tasteRangeString: "acid")
        }
        else if randomNumber > 0.6 {
            customer = Customer(tasteRange: 3, tasteRangeString: "diluted")
        }
        else {
            customer = Customer(tasteRange: 2, tasteRangeString: "medium")
        }
        return customer!
    }
    
}

