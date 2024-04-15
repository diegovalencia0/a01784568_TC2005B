//EJERCICIO 10
// Escribe una función que revise si una cadena de texto es un palíndromo o no.

function isPalindrome(word) {

    for (let i = 0; i < word.length / 2; i++) {
        if (word[i] !== word[word.length - 1 - i]) {
            return false;
        }
    }
    return true;
}

console.log(isPalindrome("anita lava la tina")); 
