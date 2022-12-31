//
//  extensions.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 30/12/22.
//

import Foundation

extension String {
    var vowels: [Character] {
        var list: [Character] = []
                   
        for char in self {
            switch String(char).lowercased() {
            case "a", "e", "i", "o", "u":
                list.append(char)
            default:
                break
            }
        }
        
        return list
    }
}

func extensoes() {
    let name = "Rafael Veronez Dias"
    
    print(name.vowels)
}
