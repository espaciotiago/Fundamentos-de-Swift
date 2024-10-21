// Ciclos: Ejecutar acciones HASTA que se cumpla una condición.
// El caso de uso más común es iterar (o recorrer) todos los elementos de una lista y ejecutar una o varias acciones con cada uno de los elementos en la lista. En ese caso la condicion que se debe cumplir para que se detenga el ciclo es: Que se acaben los elementos en la lista.

// MARK: - While loop
// while condicion {...}

var contador = 1
while contador <= 10 {
    print("El contador es: \(contador)")
    contador += 1
}

contador = 1
repeat {
    print("El contador es: \(contador)")
    contador += 1
} while contador <= 10

/*
 Crea un bucle while que repita la adivinanza de un número hasta que el usuario acierte.
 */
let answer = 7
var guess: Int?

while guess != answer {
    print("Adivina el número (entre 1 y 10):")
    guess = Int.random(in: 1..<10)
    print(guess!)
    
    if guess == answer {
        print("¡Adivinaste el número correcto!")
    } else {
        print("Nuevo intento")
    }
}

// MARK: - For loop
// for variable in secuencia {...}
for number in 1...10 {
    print(number)
}

let names = ["Ana", "Carlos", "Pedro"]
for nameIndex in 0..<names.count {
    let name = names[nameIndex]
    print("Hola, \(name)!")
}

for name in names {
    print("Hola de nuevo, \(name)!")
}

let text = "Hello, World!"
for character in text {
    print(character)
}

/* TODO: Ejercicio
 Escribe una funcion que ejecute un bucle que recorra una cadena de texto y cuente cuántas vocales contiene.
 
 Tip: Puedes usar este String "aeiouáéíóúAEIOUÁÉÍÓÚ" como variable para determinar las vocales en español.
 Puedes usar la funcion contains de los strings.
 */
func countVocals(in text: String) -> Int {
    return 0
}

/* TODO: Ejercicio 2: La gran batalla Pokemon!
 Escribe una funcion que simule una batalla entre dos Pokemones (Pokemons?).
 La funcion recibirá dos diccionarios que representan la información de cada pokemon. Cada pokemon tiene PV (puntos de vida) y PA (Puntos de ataque).
 Por defecto el turno inicial será del primer pokemon pasado como parametro.
 Cada turno un pokemon atacará al otro.
 La batalla terminará cuando uno de los dos pokemones no pueda continuar (No tenga más puntos de vida).
 La funcion debe retornar un String diciendo quien es el ganador.
 
 Tip: El ataque de un pokemon quiere decir que le reducirá la cantidad de puntos de ataque que tenga el pokemon del turno actual a la cantidad de puntos de vida del otro pokemon.
 */
let pikachu = ["pa": 10, "pv": 100]
let charmander = ["pa": 15, "pv": 120]

func simulatePokemonBattle(pokemon1: [String: Int], pokemon2: [String: Int]) -> String {
    return ""
}

let firstRound = simulatePokemonBattle(pokemon1: pikachu, pokemon2: charmander)
print(firstRound)
