//EJERCICIO 12
//Escribe una función que tome una lista de números y devuelva la mediana y la moda.

function operations(numberList) {
    const length = numberList.length;
    const sortedList = [];

    for (let i = 0; i < length; i++) {
        sortedList.push(numberList[i]);
    }

    for (let i = 0; i < length; i++) {
        for (let j = 0; j < length - 1; j++) {
            if (sortedList[j] > sortedList[j + 1]) {
                const temp = sortedList[j];
                sortedList[j] = sortedList[j + 1];
                sortedList[j + 1] = temp;
            }
        }
    }

    const middle = (length / 2) | 0;
    let median;

    if (length % 2 === 0) {
        median = (sortedList[middle] + sortedList[middle - 1]) / 2;
    } 
    
    else {
        median = sortedList[middle];
    }

    const counts = {};
    let mode;
    let maxFrequency = 0;
    for (let i = 0; i < length; i++) {
        const num = numberList[i];
        if (counts[num]) {
            counts[num]++;
        } 
        
        else {
            counts[num] = 1;
        }

        if (!mode || counts[num] > maxFrequency) {
            mode = num;
            maxFrequency = counts[num];
        }
    }

    return { median, mode };
}

const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10];
console.log(operations(numbers))
