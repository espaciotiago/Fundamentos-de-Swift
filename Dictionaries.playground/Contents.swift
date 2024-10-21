// MARK: Dictionaries (Key, value)

// Declaración explicita
let mapString: [String: String] = [ "key1": "value1",
                                    "key2": "value2" ]
let mapInt: [String: Int] = [ "key1": 1,
                              "key2": 2 ]
let mapAny: [String: Any] = [ "key1": "value1",
                              "int": 2,
                              "bool": true,
                              "map": [
                                "newKey": "newValue",
                                "newKey2": "newValue2",
                                "newKey3": 2.4
                              ],
                              "array": ["Manzana", "Pera", "Plátano"]
]

let emptyMap: [String: String] = [:]

// Declaración implicita
var cities = [
    "Colombia": "Bogotá",
    "México": "Ciudad de México",
    "España": "Madrid",
    "Francia": "París"
]

// Obtener un elemento por su llave
let capitalOfColombia = cities["Colombia"]

// Agregar o actualizar un valor
cities["Italia"] = "Roma"
print(cities)

cities["México"] = "CDMX"
print(cities)

// Listas las llaves
let keys = cities.keys
let arrayKeys = Array(keys)

// Listar los valores
let values = cities.values
let arrayValues = Array(keys)

// Eliminar un valor
cities.removeValue(forKey: "Francia")
print(cities)

cities["Italia"] = nil
print(cities)

// Eliminar todas
cities.removeAll()
print(cities)


/* TODO: Ejercicio
 Hacer una función que retorne la cantidad de habtiantes por pais en el formato: En (Pais) hay (cantidad) de habitantes. Si el diccionario no contiene la informaciónd e ese pais, debe retornar: No tengo datos suficientes para una respuesta exclarecedora.
 Recibirá el pais como parametro como String.
 
 Tip: Usar la funcion contains (diccionario.keys.contains).
 */
let habitantsPerCountry: [String: Int] = [
    "Colombia": 48000000,
    "México": 120000000,
    "España": 46000000,
    "Francia": 67000000
]

func getHabitantsPerCountry(_ country: String) -> String {
    return ""
}
