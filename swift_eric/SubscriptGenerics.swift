//
//  SubscriptGenerics.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 31/12/22.
//

import Foundation


class Car {
    var licensePlate: String
    
    subscript(index: Int) -> String {
        get {
            let character = Array(licensePlate)[index]
            return String(character)
        }

    }
    init(licensePlate: String) {
        self.licensePlate = licensePlate
    }
}


func subscriptGeneric() {
   
    var name = Array("Hello")
    
    print(name[3])
    
    
}

// Generics

func recebeQualquer<T>(val1: T, val2: T) {
    print(val1, val2)
}
