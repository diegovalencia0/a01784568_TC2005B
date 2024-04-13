//EJERCICIO 1
//Escribe una función que encuentre el primer carácter de un cadena de texto que no se repite. Prueba tu función con: 'abacddbec'
function find(str) {
    let frecuency = {};
    for (let i = 0; i < str.length; i++) {
      let character = str[i];
      if (frecuency[character]) {
        frecuency[character]++;
      } else {
        frecuency[character] = 1;
      }
    }

    for (let i = 0; i < str.length; i++) {
      if (frecuency[str[i]] === 1) {
        return str[i];
      }
    }
  
    return 0
  }
  
  // Ejemplo de uso
  console.log(find("abacddbec'"));
  console.log(find("holaaa"));
  console.log(find("Diego")); 
  