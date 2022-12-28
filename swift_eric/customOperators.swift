//
//  customOperators.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 26/12/22.
//

import Foundation


//Prefix

prefix operator <|
prefix func <| (rhs: [Int]) -> [Int] {
    let result = rhs.map({$0 - 1})
    return result
}

// Posfix


func customOperators() {
    let ages = [10,20,25,30,41]
    let lastYearAges = <|ages
    
    print(ages)
    print(lastYearAges)
}
