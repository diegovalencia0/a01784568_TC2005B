//EJERCICIO 13
// Escribe una función que reciba como parámetro una lista de cadenas de texto, y regrese la longitud de la cadena más corta.

function mostFrecuent(stringList) {
    let frequency = {};
    let mostFrequent = '';
    let maxFrequency = 0;

    for (let str of stringList) {
        frequency[str] = (frequency[str] || 0) + 1;
        if (frequency[str] > maxFrequency) {
            maxFrequency = frequency[str];
            mostFrequent = str;
        }
    }

    return mostFrequent;
}

let list = ["rojo", "azul", "verde", "verde", "negro", "morado"];
console.log(mostFrecuent(list));
