//
//  dicionarios.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 23/12/22.
//

import Foundation


func dicionarios() {
    var states = [
        "AC": "Acre",
        "AL": "Alagoas",
        "AP": "Amapá",
        "AM": "Amazonas",
        "BA": "Bahia",
        "CE": "Ceará",
        "DF": "Distrito Federal",
        "ES": "Espiríto Santo"
    ]

    states["GO"] = "Goaiaz"

    print(states)

    // Inicializando dicionario vazio
    let studentGrade: [String: Double] = [:]

    states.updateValue("Goiás", forKey: "GO")

    print(states.keys)

}
