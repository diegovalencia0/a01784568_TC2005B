//Escribe dos funciones: la primera que invierta un arreglo de números y regrese un nuevo arreglo con el resultado; la segunda que modifique el mismo arreglo que se pasa como argumento. No se permite usar la función integrada 'reverse'.


function invert(arr){

    let length = arr.length;

    for(let i = 0; i<length;i++){
        reversedArray = [];
        reversedArray=arr[length - i]
        console.log("Este es un nuevo arreglo revertido" + reversedArray);

    }

}


function modify(arr){
    let length = arr.length;
    for(let i = 0; i < length / 2; i++){
        let temp = arr[i];
        arr[i] = arr[length - 1 - i];
        arr[length - 1 - i] = temp;
    }
    console.log("Este es tu mismo arreglo invertido: " + arr);
}

arreglo = [9,8,7,6,5,4,3,2,1]
invert(arreglo);
modify(arreglo);