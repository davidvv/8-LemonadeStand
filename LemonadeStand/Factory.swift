//
//  Factory.swift
//  LemonadeStand
//
//  Created by David Vences Vaquero on 3/5/15.
//  Copyright (c) 2015 David. All rights reserved.
//

import Foundation

class Factory {
    
    class func weather() -> Int {
        var maxCustomers = 10
        var customerMultiplier:Double = 1
        var weatherRandomiser = Int(arc4random_uniform(UInt32(3)))
        switch weatherRandomiser{
            case 0: customerMultiplier = 1.4
            case 1: customerMultiplier = 0.6
            case 2: customerMultiplier = 1
            default: println("error")
        }
        maxCustomers = Int((Double(maxCustomers) * customerMultiplier))
        return maxCustomers
    }
    
    class func customerArrayCreator() -> [Customer] {
        var customers:[Customer] = []
        var numberOfCustomers = Factory.weather()
        for var customerNumber = 1; customerNumber == numberOfCustomers; customerNumber++ {
            var customer = Factory.customerCreator()
            customers.append(customer)
            }
        return customers
    }
    
    
    
    class func customerCreator() -> Customer {

        var randomNumber = Double(Int(arc4random_uniform(UInt32(11))) / 10)
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

