//
//  funcs.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 23/12/22.
//

import Foundation


func funcs() {
    
//  Parametros com nomes primarios e secundarios
    func multiplicar(_ numero1: Int, por numero2: Int) -> Int {
        return numero1 * numero2
    }
    
//    Parametros com multiplos valores
    func sum(firstValue initialValue: Int, withValues values: Int...) -> Int {
        var result = initialValue
        
        for value in values {
            result += value
        }
        
        return result
    }
    
    let studentData = "Rafael Veronez Dias:25"
    
    func getStudentInfo(_ data: String) -> (nome: String, age: Int) {
        let info = data.components(separatedBy: ":")
        let studentName = info[0]
        let studentAge = Int(info[1])!
        return(studentName, studentAge)
    }
        
    typealias Op = (Int, Int) -> Int
    typealias onResult = (Int) -> ()
    
    func applyOperation(_ a: Int, _ b: Int, operation: Op) -> Int {
        return operation(a, b)
    }
    
    applyOperation(10, 20, operation: {(a: Int, b: Int) -> Int in
        return a + b
    })
    
    func entreResultadoSoma(a: Int, b: Int, onResultado: onResult) {
        return onResultado(a+b)
    }
    
    entreResultadoSoma(a: 20, b: 30, onResultado: {(resultado) in
        print("Arrow function do swift \(resultado)")
    })
    
    entreResultadoSoma(a: 15, b: 20) { (resultado) in
        print("Function like kotlin \(resultado)")
    }
    
    
    print(getStudentInfo(studentData))
    print(multiplicar(5, por: 10))
    print(sum(firstValue: 5, withValues: 2,4,6,8,10))
    
}
