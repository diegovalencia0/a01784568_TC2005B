//EJERCICIO 11
// Escribe una función que tome una lista de cadena de textos y devuelva una nueva lista con todas las cadenas en orden alfabético.

function order(str) {
    for (let i = 0; i < str.length - 1; i++) {

        for (let j = i + 1; j < str.length; j++) {
            if (str[j] < str[i]) {
                let temp = str[j];
                str[j] = str[i];
                str[i] = temp;
            }
        }
    }
    return str;
}
let list = ["avion", "carro", "bote", "camion", "carruaje"];
console.log(order(list)); 
