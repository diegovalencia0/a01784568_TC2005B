//EJERCICIO 8
// Escribe una función que quite los elementos duplicados de un arreglo y regrese una lista con los elementos que quedan. Por ejemplo: quitaDuplicados([1, 0, 1, 1, 0, 0]) -> [1, 0]

function noDuplicate(arr) {
    let newArr = [];
    let length = arr.length;
    
    for(let i = 0; i < length; i++) {
        let isDuplicate = false;
        for(let j = 0; j < newArr.length; j++) {
            if(arr[i] === newArr[j]) {
                isDuplicate = true;
                break;
            }
        }
        if(!isDuplicate) {
            newArr.push(arr[i]);
        }
    }
    return newArr;
}

let arreglo = [1, 0, 1, 1, 0, 0];
console.log(noDuplicate(arreglo));
