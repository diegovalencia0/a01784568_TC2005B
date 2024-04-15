//EJERCICIO 14
// Escribe una función que tome un número y devuelva verdadero si es una potencia de dos, falso de lo contrario.

function isPowerOfTwo(num) {
    if (num <= 0) {
        return false;
    }
    while (num > 1) {
        if (num % 2 !== 0) {
            return false;
        }
        num /= 2;
    }
    return true;
}

console.log(isPowerOfTwo(4)); 
console.log(isPowerOfTwo(3));

