
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
