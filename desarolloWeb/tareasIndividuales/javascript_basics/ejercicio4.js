//Escribe una función que reciba una cadena de texto y regrese una nueva con la primer letra de cada palabra en mayúscula.

function mayus(str){
    let newStr = ""; 

    for(let i = 0; i < str.length; i++){
        
        if (i === 0 || str[i - 1] === " ") {
            
            newStr += str[i].toUpperCase();
        } 
        
        else {
            
            newStr += str[i];
        }
    }
    
    console.log(newStr);
}

let word = "buen día señor stark";
mayus(word);
