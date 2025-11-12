//
//  main.swift
//  lesson3
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 12/11/25.
//

import Foundation

// Arrays! 📋

var beatles = ["John", "Paul", "George", "Ringo"]


// Append, adicionar coisas no array

beatles.append("Allen")
beatles.append("Adrian")


// Arrays vazios ⬜️

var pontos = Array<Int>()
// ou
var albuns = [String]()


// Operações de Arrays ⏯️

var personagens = ["Lana", "Pam", "Ray", "Sterling"]
print(personagens.count)

personagens.remove(at: 2)
print(personagens.count)

personagens.removeAll()
print(personagens.count)


var filmes = ["um filme", "dois filmes"]
print(filmes.contains("Frozen"))

var cidades = ["Londres", "Tóquio", "Roma", "Budapeste"]
print(cidades.sorted())

var reverse = ["Presidente 1", "Presidente 2"]
let reversedreverse = reverse.reversed()
print(reversedreverse)


// Dicionários! 📒

let trabalhador2 = [
    "nome": "Luan Santana",
    "trabalho": "Cantor",
    "Local": "Brasil"
]

print(trabalhador2["nome"]) // tipagem errada :o

print(trabalhador2["nome", default:"Desconhecido"]) // jeito correto


// Dicionário vazio 📔

// key value
var arcoinimigo = [String: String]()
arcoinimigo["Batman"] = "Coringa"


// Set, não guarda duplicatas mas NÃO MANTEM A ORDEM 🗂️

let pessoas = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samule L Jackson",
    "Denzel Washington"
])

print(pessoas)


// For loops!!!!!!!!! 🔄

let plataformas = ["iOS", "macOS", "tvOS", "watchOS"]
for os in plataformas {
    print("Swift é incrivel em \(os)!")
}


// Loops in range 🔁

for i in 1...5 {
    print("Contando de 1 a 5: \(i)")
}

print()

for i in 1..<5 {
    print("Contando de 1 até 5: \(i)")
}

// Ignorar variável do loop?!!!! 😧

var letra = "Haters gonna"
for _ in 1...5 {
    letra += " hate"
}

print(letra)


// While loop!!!🔥🔥🔥🔥

var dado = 0

while dado != 20 {
    dado = Int.random(in: 1...20)
    print("Eu rolei um \(dado)")
}

print("Dado crítico!")


// continue ✅✅✅✅
let arquivos = ["eu.jpg", "trabalho.txt", "sophia.jpg", "logo.psd"]

for arquivo in arquivos {
    if arquivo.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Achou imagem: \(arquivo)")
}


// break!!!! 🛑🛑🛑🛑🛑

let num1 = 4
let num2 = 14
var multiplos = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: num1) && i.isMultiple(of: num2) {
        multiplos.append(i)
        
        if multiplos.count == 10 {
            break
        }
    }
}

print(multiplos)

