//EJERCICIO 2
//Escribe una función que implemente el algoritmo 'bubble-sort' para ordenar una lista de números.

function bubbleSort(str){
    let length = str.length;

    for(let i = 0; i < length; i++){

        if(str[i-1] > str[i]){
            let temp = str[i - 1];
            str[i - 1] = str[i];
            str[i] = temp;    
        }
    }
    console.log(str);
}

let cadena = [1, 2, 4, 3, 5, 7, 6, 8];
bubbleSort(cadena);

