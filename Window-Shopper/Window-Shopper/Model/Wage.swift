//
//  Wage.swift
//  Window-Shopper
//
//  Created by Arghadeep  on 01/02/21.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
