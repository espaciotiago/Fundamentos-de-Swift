
// MARK: - Condicional simple
let note = 3

/*
 Si la nota es mayor o igual a 3, el estudiante pasó el examen.
 En caso contrario, no pasó el examen.
 */
if(note >= 3) {
    print("Felicidades, has pasado el examen.")
} else {
    print("Lo siento, no has pasado el examen.")
}

// MARK: - Condicional con y / o
let note2 = 3
let examPresented = true

/*
 Si la nota es mayor o igual a 3 y sabemos que presentó el examen, el estudiante pasó.
 En caso contrario, no pasó el examen.
 */
if(examPresented && note2 >= 3) {
    print("Felicidades, has pasado el examen.")
} else {
    print("Lo siento, no has pasado el examen.")
}

/*
 Si la nota es mayor o igual a 3 o el estudiante fue eximido del examen, el estudiante pasó.
 En caso contrario, no pasó el examen.
 */
let note3 = 2
let exempted = true
if(exempted || note3 >= 3) {
    print("Felicidades, has pasado el examen.")
} else {
    print("Lo siento, no has pasado el examen.")
}

/*
 TODO: Ejercicio
 ¿Cómo saber si un número es par o impar?
 Tip: Investiga y usa el operador módulo (%)
 */

// MARK: - Condicional compuestos
/*
 Si la nota esta entre 0 y 2. Le fue muy mal.
 Si la nota esta 2 y 3. Estuvo cerca.
 Si la nota esta 3 y 4. Pasó raspando.
 Si la nota esta 4 y 5. Muy bien.
 */
let note4 = 1

if(note4 >= 0 && note4 < 2) {
    print("Muy mal")
} else if(note4 >= 2 && note4 < 3) {
    print("Estuvo cerca")
} else if(note4 >= 2 && note4 < 4) {
    print("Pasó, pero respando")
} else if(note4 >= 4 && note4 < 5) {
    print("Muy bien")
} else {
    print("Error en el sistema")
}

