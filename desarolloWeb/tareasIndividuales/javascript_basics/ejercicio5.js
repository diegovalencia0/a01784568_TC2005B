//EJERCICIO 5
// Escribe una función que calcule el máximo común divisor de dos números.

function mcd(num1, num2) {

    while (num2 !== 0) {
        num1 %= num2;
        [num1, num2] = [num2, num1];
    }

    return num1;
}


let numero1 = 36;
let numero2 = 24;
console.log("El MCD de", numero1, "y", numero2, "es:", mcd(numero1, numero2) );
