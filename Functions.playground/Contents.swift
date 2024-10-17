
// MARK: - Funciones sin retorno

// Definir la función
func greetings() {
    print("Hello, World!")
}

// Llamar a la función
greetings()

func greetUser(name: String) {
    print("Hello, \(name)!")
}

greetUser(name: "Tiago")

let name = "Maria"
greetUser(name: name)

// MARK: - Funciones con retorno

// Calcular el promedio de tres números
func calculateAverage(numberOne: Double, numberTwo: Double, numberThree: Double) -> Double {
    let sum = numberOne + numberTwo + numberThree
    let average = sum / 3
    return average
}

func getFinalGrade(note: Double) -> String {
    if(note >= 0 && note < 2) {
        return "Muy mal"
    } else if(note >= 2 && note < 3) {
        return "Estuvo cerca"
    } else if(note >= 2 && note < 4) {
        return "Pasó, pero respando"
    } else if(note >= 4 && note < 5) {
        return "Muy bien"
    } else {
        return "Error en el sistema"
    }

}

let average = calculateAverage(numberOne: 5, numberTwo: 1.5, numberThree: 2)
let final = getFinalGrade(note: average)
print(final)
