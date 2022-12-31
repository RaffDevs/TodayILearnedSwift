//
//  heranca.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 27/12/22.
//

import Foundation


class Animal2 {
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

class Cachorro: Animal2 {
    override func emitSound() {
        print("Au au au")
    }
    
    func run() {
        print("O cachorro está correndo!")
    }
}

class Pata: Animal2 {
    
    override func emitSound() {
        print("Quack quack")
    }
}

class Passaro: Animal2 {
    let canFly: Bool
    
    // Designaated Initializer (construtor com o objetivo de alimentar minhas propriedades)
    init(color: String, numberOfLegs: Int, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, numberOfLegs: numberOfLegs, breed: breed)
    }
    
    override func emitSound() {
        print("Piando")
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

func polimorfismo() {
    let logan = Cachorro(color: "Preto e Marrom", numberOfLegs: 4, breed: "Pastor Alemão")
    let fenix = Passaro(color: "Preto", numberOfLegs: 2, breed: "Harpia Brasileira", canFly: true)
    if let dog = logan as? Animal2 {
        // Do something
    }
    
    logan.emitSound()
    fenix.emitSound()
}
