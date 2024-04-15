//EJERCICIO 9
// Escribe una función que reciba como parámetro una lista de cadenas de texto, y regrese la longitud de la cadena más corta.

function shorter(str) {
    if (str.length === 0) {
        return 0; 
    }

    let shorterLength = str[0].length; 

    for (let i = 1; i < str.length; i++) {
        let arrLength = str[i].length;
        if (arrLength < shorterLength) {
            shorterLength = arrLength;
        }
    }

    return shorterLength;
}

let list = ["ave", "avestruz", "pinguino", "koala"];
console.log(shorter(list));

