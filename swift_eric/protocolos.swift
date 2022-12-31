//
//  protocolos.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 30/12/22.
//

import Foundation

protocol NftCapable {
    var hasNFT: Bool {get set}
    func turnNFT(on: Bool)
}

class Smartphone {
    var marca: String
    var preco: Double
    
    init(marca: String, preco: Double) {
        self.marca = marca
        self.preco = preco
    }
    
    func ligar() {
        print("Ligando smartphone")
    }
}

class Iphone: Smartphone, NftCapable {
    func turnNFT(on: Bool) {
        hasNFT = !hasNFT
    }
    
    init(marca: String) {
        super.init(marca: marca, preco: 5000.0)
    }
    
    var hasNFT: Bool = true
    
    
}


func protocolos() {
    var iphone = Iphone(marca: "Apple")
    
    iphone.turnNFT(on: true)
}
