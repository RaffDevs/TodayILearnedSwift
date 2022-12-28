//
//  classes.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 26/12/22.
//

import Foundation

class Person {
    var name: String
    var age: Int = 0
    var gender: Character
    
    init(name: String, age: Int, gender: Character) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    func speak(sentence: String) {
        if age < 3 {
            print("gugu data")
        } else {
            print(sentence)
        }
    }
    
    func introduce() {
        speak(sentence: "Olá, meu nome é \(name)")
    }
}


class Job {
    var title: String
    var sallary: Double
    
    init(title: String, sallary: Double) {
        self.title = title
        self.sallary = sallary
    }
}

class Vehicle {
    var speed: Double = 0 {
        didSet {
            speed = min(speed, maxSpeed)
            print("Velocidade aumentou!!!")
        }
    }
    var model: String
    static let speedUnit = "Km/h"
    
    var maxSpeed: Double {
        return 250
    }
    
    var speedInMilesPerHour: Double {
        get {
            return speed / 1.60934
        }
        
        set {
            speed = newValue * 1.60934
        }
    }
    
    init(speed: Double, model: String) {
        self.speed = speed
        self.model = model
    }
    
    func descript() -> String {
        return "Veículo: \(model), velocidade atual: \(speed)"
    }
    
    func acelerar() {
        speed += 10
    }
    
    
    // Metodo estatico
    class func alert() -> String {
        return "Se beber, não dirija!!!"
    }
}


func classesRun() {
    let joao = Person(name: "João", age: 20, gender: "M")
    let clara = Person(name: "Clara", age: 28, gender: "F")
    let fabio = Person(name: "Fábio", age: 25, gender: "M")
    let carro = Vehicle(speed: 50, model: "Dodge")
    
    carro.acelerar()
    carro.acelerar()
    carro.acelerar()
    
//    joao.introduce()
//    clara.introduce()
//    fabio.introduce()
}
