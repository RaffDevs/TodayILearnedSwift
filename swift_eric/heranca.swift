//
//  heranca.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 27/12/22.
//

import Foundation


class Animal {
    let color: String
    let numberOfLegs: Int
    let breed: String
    
    init(color: String, numberOfLegs: Int, breed: String) {
        self.color = color
        self.numberOfLegs = numberOfLegs
        self.breed = breed
    }
    
    func emitSound() {
        print("...")
    }
    
}

class Dog: Animal {
    func run() {
        print("O cachorro está correndo!")
    }
}

class Bird: Animal {
    let canFly: Bool
    
    // Designaated Initializer (construtor com o objetivo de alimentar minhas propriedades)
    init(color: String, numberOfLegs: Int, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, numberOfLegs: numberOfLegs, breed: breed)
    }
    
    //Convenience Initializer
    convenience init(color: String, breed: String) {
        self.init(color: "Verde", numberOfLegs: 2, breed: "Pombo", canFly: true)
    }
    
    func fly() {
        if (canFly) {
            print("O passaro está voando!")
        } else {
            print("Essa especia de passaro não voa!")
        }
    }
}

func heranca() {
    let logan = Dog(color: "Preto e Marrom", numberOfLegs: 4, breed: "Pastor Alemão")
    let fenix = Bird(color: "Preto", numberOfLegs: 2, breed: "Harpia Brasileira", canFly: true)
    
    logan.emitSound()
    fenix.emitSound()
}
