//
//  erros.swift
//  swift_eric
//
//  Created by Rafael Veronez Dias on 26/12/22.
//

import Foundation

enum LoginError: Error {
    case wrongLogin
    case wrongPassword
    case noInternetConnection
}

func errosRun() {
    do {
        let loginResult = try login(userName: "Rafael", password: "123456")
        
        // If error return nil
//        let loginResult = try? login(userName: "Rafael", password: "123456")
        
        
    } catch LoginError.wrongLogin {
        print("Nome do usuario inválido")
    } catch LoginError.wrongPassword {
        print("Senha do usuário invalida")
    } catch LoginError.noInternetConnection {
        print("Sem conexão com internet!")
    } catch {
        print(error)
    }
}

func login(userName: String, password: String) throws -> Bool {
    if (checkInternetConnection()) {
        if userName != "Rafael" {
            throw LoginError.wrongLogin
        }
        if password != "123456" {
            throw LoginError.wrongPassword
        } else {
            return true
        }
    } else {
        throw LoginError.noInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return false
}

