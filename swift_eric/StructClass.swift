//
//  StructClass.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 31/12/22.
//

import Foundation


struct Student {
    var name: String
    var age: Int
}

class Person2 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

// Structs copiam sua referencia e não a compartilham
func structClass() {
    var student1 = Student(name: "Rafael", age: 25)
    var student2 = student1
    
    student1.name = "Thais"
    student1.age = 30
    
    print(student2.name, student2.age)
    
    var pessoa1 = Person2(name: "Rafael", age: 25)
    var pessoa2 = pessoa1
    
    pessoa1.name = "Thais"
    pessoa1.age = 30
    
    print(pessoa2.name, pessoa2.age)
    
    
    // O valor da variavel array tem sua referência passada para o array2
    // No entatno, quando o valor do array2 for alterado, deixa de ser uma referência e é criado uma copia do valor do array para array2
    // Isso é chamado de Copy on Qrite
    var array = [0,2,3,435,68,6]
    var array2 = array
}


func teste() {
    var n1 = 6
    var n2 = 5
    var n3 = 8
    
    if (n1 == 6 && n2 == 5 && n3 == 8) {
        
    }
}
