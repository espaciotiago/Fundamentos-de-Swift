/* MARK: - Arrays (Listas)
 - Son ordenados
 - Permiten tener duplicados
 - Se acceden por incdice (Posición en la que se encuentra el elemento. p.ej 0, 1, 2, 3...n)
 */
// Declaración explicita
let fruitsExplicitArray: [String] = ["Manzana", "Naranja", "Pera", "Piña"]
let fruitsExplicitEmptyArray = [String]()

// Declaración implicita
var fruitsArray = ["Manzana", "Naranja", "Pera", "Manzana"]
let fruitsEmptyArray: [String] = []

// Acceder a un elemento
let firstFruit = fruitsArray[0]
let secondFruit = fruitsArray[1]
let totalOfFruits = fruitsArray.count
let lastFruit = fruitsArray[totalOfFruits - 1] // count para contar el total de elementos

// Agregar un elementos
fruitsArray.append("Piña") // Agrega al final
print(fruitsArray)

fruitsArray.insert("Durazno", at: 3) // Agrega en una posición especifica
print(fruitsArray)

// Eliminar elementos
fruitsArray.remove(at: 3) // Elimina en una posición especifica
print(fruitsArray)

fruitsArray.removeLast() // Elimina el ultimo elemento
print(fruitsArray)

fruitsArray.removeAll() // Elimina todos
print(fruitsArray)

// Agregar todos los elementos de otra lista
fruitsArray.append(contentsOf: fruitsExplicitArray)
print(fruitsArray)

// ¿Mi lista contiene un elemento especifico?
let hasDurazno = fruitsArray.contains("Durazno")
let hasManzana = fruitsArray.contains("Manzana")

/* MARK: - Sets (Conjuntos)
 - No ordenados
 - No se pueden acceder los elementos por indica (Posición)
 - No puede tener duplicados
 */
// Declaración explicita
let animalsExplicitSet: Set<String> = Set(["Perro", "Gato", "Conejo", "Tortuga"])
let animalsExplicitEmptySet: Set<String> = Set()

// Declaración explicita
var animalsSet = Set(["Perro", "Gato", "Conejo", "Tortuga"])
let animalsEmptySet: Set<String> = Set<String>()

// Contar
let totalOfAnimals = animalsSet.count

// Agregar un elemento
animalsSet.insert("Elefante")
print(animalsSet)

animalsSet.insert("Elefante")
print(animalsSet)
 
// Eliminar un elemento
animalsSet.remove("Elefante")
print(animalsSet)

animalsSet.removeAll()
print(animalsSet)

// MARK: - Operaciones interesantes de conjuntos
let setOne = Set([1, 2, 3, 4, 5])
let setTwo = Set([2, 3, 4, 5, 6])

// Devuelve un nuevo set que contiene todos los elementos de ambos sets.
let union = setOne.union(setTwo)
print(union)

// Devuelve un nuevo set con los elementos comunes entre los dos sets.
let intersection = setOne.intersection(setTwo)
print(intersection)

// Devuelve un nuevo set con los elementos que están en el primer set pero no en el segundo.
let difference = setOne.subtracting(setTwo)
print(difference)

// Devuelve un nuevo set con los elementos que están en uno u otro set, pero no en ambos.
let symmetricDifference = setOne.symmetricDifference(setTwo)
print(symmetricDifference)
