//
//  enums.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 23/12/22.
//

import Foundation

func enums() {
    enum CompassPoint {
        case north
        case east
        case west
        case south
    }
    
    enum SeatPosition: String {
        case aisle = "corredor", middle = "meio", window = "janela"
    }
    
    enum SequenciaOrdenal: Int {
        case primeiro = 1
        case segundo
        case terceiro
        case quarto
        case quinto
    }
    
    var personSeat = SeatPosition.window
    
    switch(personSeat) {
        case .aisle:
            print("O passageiro está no corredor")
        case .middle:
            print("O passageiro está na janela")
        case .window:
            print("O passageiro está na janela")
    }
    
    print(personSeat.rawValue)
    
    var direction: CompassPoint = .north
    direction = .south
    print(direction)
    print(SequenciaOrdenal.quarto.rawValue)
    
    
    // Valores associados
    
    enum Measure {
        case weight(Double)
        case age(Int)
        case size(width: Double, height: Double)
    }
    
    let measure: Measure = .age(25)
    
    switch measure {
        case .weight(let peso):
            print("Seu peso é \(peso)")
        case .age(let age):
            print("Sua idade é \(age)")
        case .size(let width, let height):
            print("Sua largura é: \(width) e sua altura é: \(height)")
    }
}
