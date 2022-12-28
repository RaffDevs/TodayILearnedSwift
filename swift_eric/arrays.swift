import Foundation

struct Pessoa {
    var name: String
    var idade: Int
}
func arrays() {
    let name1 = "Rafael"
    let name2 = "Thais"
    let name3 = "Thamires"

    let names = [name1, name2, name3]


    let anotherNames: [String] = ["Rafael", "Veronez", "Dias"]
    let lotteryNumbers: [Int] = []
    let phoneNumbers: [String]?

    let ages = [10,20,30,40,50]

    var guests = ["João", "Paula", "Alexandre", "Patrícia", "Sandra"]

    print(guests.count)
    print(guests.isEmpty)

    guests[2] = "Rafael"
    guests[0...1] = ["Thais", "Ademir", "Thamires", "Marcia"]
    print(guests)

    guests += ["Fulano", "Ciclano", "Beltrano"]
    guests.append("Veronez")
    guests.insert("Dias", at: 3)

    print(guests)

    print(guests.contains("Rafael"))
    
    
    let listaPessoas: [Pessoa] = [
        Pessoa(name: "Rafael", idade: 25),
        Pessoa(name: "Thais", idade: 29),
        Pessoa(name: "Thamires", idade: 31),
        Pessoa(name: "Marcia", idade: 50)
    ]
    
    
    let numeros = [
        0,1,2,3,4,5,6,7,8,9
    ]
    
    let numerosPares = numeros.filter {numero in
        return numero % 2 == 0
    }
    
    let pessoas = listaPessoas.filter {pessoa in
        return pessoa.name == "Rafael"
    }
    
    print("Pessoa \(listaPessoas)")
    
    print("Pares \(numerosPares)")
    
//    var pessoasNovas = listaPessoas.filter({$0.idade > 30})
//    let apenasNomes = listaPessoas.map({(pessoa: Pessoa)  in
//        return pessoa.name
//    })

//    print("Pessoas novas", pessoasNovas)
//    print(apenasNomes)
}

