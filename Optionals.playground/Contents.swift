
// MARK: -Datos opcionales
var intOptional: Int? = nil
intOptional = 10

let intDefaultValue = intOptional ?? 0

print(intOptional!)

/*
 En una aplicación de mensajería, cuando un usuario ingresa su nombre, el sistema lo saluda personalmente; de lo contrario, muestra un saludo genérico.
 */

func saludar(nombre: String?) -> String {
    return nombre != nil ? "Hola, \(nombre!)" : "Hola, visitante"
}

let saludoPersonalizado = saludar(nombre: "María")
let saludoGenerico = saludar(nombre: nil)
print(saludoPersonalizado)  // Salida: Hola, María
print(saludoGenerico)       // Salida: Hola, visitante

/*
 TODO: Ejercicio
 Crea una funcion que reciba dos Doubles opcionales y retorne el valor de la suma en un String que diga: "La suma de (primer numero) + (segundo numero) es: (respuesta) En caso tal de que no pueda sumarlos (porque alguno de los dos, o los dos, numeros es nil (nulo) debe retornar "No se puede realizar la operación)
 
 Tip: Usar condicionales para validar que los valores no sean nil (!= nil). Usar unwrap de los valores si y solo si es posible (!)
 */
