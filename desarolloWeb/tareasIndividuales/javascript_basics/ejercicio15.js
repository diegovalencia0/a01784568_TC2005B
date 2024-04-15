//EJERCICIO 15
// Escribe una función que tome una lista de números y devuelva una nueva lista con todos los números en orden descendente.


function descendingOrder(numbers) {
    const sortedNumbers = [];
    for (let i = 0; i < numbers.length; i++) {
        sortedNumbers[i] = numbers[i];
    }
    
    for (let i = 0; i < sortedNumbers.length - 1; i++) {

        for (let j = 0; j < sortedNumbers.length - i - 1; j++) {

            if (sortedNumbers[j] < sortedNumbers[j + 1]) {
                const temp = sortedNumbers[j];
                sortedNumbers[j] = sortedNumbers[j + 1];
                sortedNumbers[j + 1] = temp;
            }
        }
    }
    
    return sortedNumbers;
}

const numbers = [5, 2, 9, 1, 7];
console.log(descendingOrder(numbers));