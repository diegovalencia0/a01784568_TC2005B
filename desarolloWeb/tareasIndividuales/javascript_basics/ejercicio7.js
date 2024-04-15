//EJERCICIO 7
// Escribe una función que reciba un número, y regrese una lista con todos sus factores. Por ejemplo: factoriza(12) -> [1, 2, 3, 4, 6, 12].

function fact(num){

    for(let i = 0;i<=num;i++){
        if(num%i == 0){
            
            factors[i] = i;
        }
        else{

        }
    }
    console.log(factors)

}

let number = 12;
let factors = []
console.log(fact(number));