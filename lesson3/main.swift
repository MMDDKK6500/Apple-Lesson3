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



// Lições

//Inventário ✅
var itens = [String]()

if let entrada1 = readLine(), let tamanho = Int(entrada1) {
    for _ in 1...tamanho {
        if let item = readLine() {
            itens.append(item)
        }
    }
}

if let entrada2 = readLine(), let escolha = Int(entrada2) {
    print(itens[escolha])
}


// Tesouro
var colheta = [String]()

if let entrada1 = readLine(), let tamanho = Int(entrada1) {
    for _ in 1...tamanho {
        if let item = readLine() {
            colheta.append(item)
        }
    }
}

if let escolha = readLine() {
    if colheta.contains(escolha) {
        print("Total de itens: \(colheta.count). O item \(escolha) esta no inventario")
    } else {
        print("Total de itens: \(colheta.count). O item \(escolha) nao esta no inventario")
    }
}


// Livro - UTILIZA FOUNDATION
var grimorio = [String: Int]()

if let entrada1 = readLine(), let tamanho = Int(entrada1) {
    for _ in 1...tamanho {
        if let feitico = readLine() {
            let feiticoArray = feitico.components(separatedBy: ",")
            grimorio[feiticoArray[0]] = Int(feiticoArray[1])
        }
    }
}

if let escolha = readLine() {
    print("O feitico \(escolha) tem poder: \(grimorio[escolha, default: 0])")
}


// Missões - utilzia foundations PUTA MERDA ESSE TINHA TESTES DIFERETNES EU ODEIO QUEM FEZ OS TESTES
var missoes = [String: Int]()
var saida1: String = ""


if let entrada1 = readLine(), let tamanho = Int(entrada1) {
    for _ in 1...tamanho {
        if let missao = readLine() {
            let missaoArray = missao.components(separatedBy: ",")
            missoes[missaoArray[0]] = Int(missaoArray[1])
        }
    }
}

if let entrada2 = readLine(), let quantidade = Int(entrada2)  {
    for i in 1...quantidade {
        if let escolha = readLine() {
            if missoes[escolha] != nil {
                saida1 += "A missao \(escolha) paga: \(missoes[escolha]!) moedas. "
            } else {
                saida1 += "A missao \(escolha) nao esta disponivel. "
            }
        }
        if i == quantidade {
            saida1.removeLast()
            saida1.removeLast()
        }
    }
    print(saida)
}



// Guilda - MESMA COISA QUE O OUTRO PUTA QUE PRIU
var membros = [String]()
var saida2: String = ""


if let entrada1 = readLine(), let tamanho = Int(entrada1) {
    for _ in 1...tamanho {
        if let missao = readLine() {
            membros.append(missao)
        }
    }
}

for i in 1...membros.count {
    saida2 += "Presente: \(membros[i-1]). "
    if i == membros.count && membros.count != 1 {
        saida2.removeLast()
        saida2.removeLast()
    }
}
print(saida2)

 
// Treino -- dev, vc foi perdoado desta vez, você avisou dessa vez. APENAS ESSA VEZ

var saida3 = ""

if let entrada1 = readLine(), let tamanho = Int(entrada1) {
    for i in 1...tamanho {
        saida3 += "Golpe \(i), "
    }
    saida3.removeLast(2)
    print(saida3)
}


// Taverna -- ODEIO O DEV, DESORDENADO NADA, TEM Q TA ORDENADO >:C
var rumores = Set<String>()
var saida4 = ""

if let entrada1 = readLine(), let qtd = Int(entrada1) {
    for _ in 1...qtd {
        if let rumor = readLine() {
            rumores.insert(rumor)
        }
    }
    
    
    var rumoresArray = Array(rumores)
    rumoresArray.sort()
    
    for rumor in rumoresArray {
        saida4 += "\(rumor), "
    }
    
    saida4.removeLast(2)
    print(saida4)
}

 
// Artefato -- ok
var itensBaus = [String]()
var saida5 = ""

if let nomeArtefato = readLine(), let entrada2 = readLine(), let qtd = Int(entrada2) {
    for _ in 1...qtd {
        if let itemBau = readLine() {
            itensBaus.append(itemBau)
        }
    }
    
    for i in 1...qtd {
        if itensBaus[i - 1] == nomeArtefato {
            saida5 += "Artefato \(nomeArtefato) encontrado!"
            break
        }
        saida5 += "Encontrado: \(itensBaus[i - 1])... "
    }
    print(saida5)
}


// Ingredientes -- yipee
var ingredientes = [String]()
var saida6 = ""

if let entrada1 = readLine(), let qtd = Int(entrada1) {
    for _ in 0..<qtd {
        if let ingrediente = readLine() {
            if ingrediente.hasSuffix("Magico") || ingrediente.hasSuffix("Magica") {
                ingredientes.append(ingrediente)
            }
        }
    }
    
    if ingredientes.isEmpty {
        print("Nenhum ingrediente magico encontrado")
    } else {
        for i in 0..<ingredientes.count {
            saida6 += "\(ingredientes[i]), "
        }
        saida6.removeLast(2)
    }
    print(saida6)
}

// Masmorra

var salas = [Int: String]()
var moedasTotal = 0
var saida: String = ""


if let entrada1 = readLine(), let tamanho = Int(entrada1) {
    for _ in 1...tamanho {
        if let inimigo = readLine() {
            let inimigoArray = inimigo.components(separatedBy: ",")
            salas[Int(inimigoArray[0])!] = inimigoArray[1]
            if salas.contains(where: {$0.value == "Chefe Final"}) {
                continue
            }
            moedasTotal += Int(inimigoArray[2])!
        }
    }
    
    for i in 1...tamanho {
        if salas[i]! == "Chefe Final" {
            saida += "Chefe Final encontrado! "
            break
        } else {
            saida += "Sala \(i): \(salas[i]!), "
        }
    }
    saida += "Total de moedas: \(moedasTotal)"
    print(saida)
}

