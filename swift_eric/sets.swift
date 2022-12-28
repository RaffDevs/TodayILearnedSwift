//
//  sets.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 23/12/22.
//

import Foundation

func sets() {
    var movies: Set<String> = [
        "Matrix",
        "Vingadores",
        "Jurassic Park",
        "De volta para o futuro",
    ]
    
    movies.insert("Homem-Aranha: Sem volta para casa")
    
    let result = movies.insert("Adão Negro")
    
    print(result.inserted, result.memberAfterInsert)
    
    for movie in movies {
        print(movie)
    }
    
    var anotherMovies: Set<String> = [
        "De repente 30",
        "Mensagem para você",
        "Sintonia de amor",
        "De volta para o futuro",
        "Jurassic Park"
    ]
    
    
    
    let favoriteMovies = movies.intersection(anotherMovies)
    print(favoriteMovies)
    
    let allMovies = movies.union(anotherMovies)
    print(allMovies)
    
    movies = movies.subtracting(anotherMovies)
    print(movies)
    
    let address = "General Carneiro, 227A, Franca - SP, 14405406 "
    
    let newAddress: (type: String, number: Int, city: String) = ("General Carneiro", 227, "Franca")
    
    
}
