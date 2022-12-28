//
//  estruturas.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 23/12/22.
//

import Foundation

func estruturas() {
    struct Person {
        var name: String?
        var age: Int = 0
        
        func introduceYourSelf() {
            if let name = name {
                print("Olá, meu nome é \(name) e tenho \(age) de idade!")
            }
        }
        
        mutating func incrementAge() {
            age += 1
        }
    }
    
    struct Multiplo {
        var valor: Int
        var dobro: Int {
            return valor * 2
        }
        var triplo: Int {
            return valor * 3
        }
    }
    
    var multiplo = Multiplo(valor: 7)
    
    print(multiplo.dobro)
    print(multiplo.triplo)
    
    var person = Person(name: "Rafael", age: 25)
    person.introduceYourSelf()
    person.incrementAge()
}
