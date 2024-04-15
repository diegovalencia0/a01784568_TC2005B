//EJERCICIO 6
// Crea una función que cambie una str de texto a 'Hacker Speak'. Por ejemplo, para la str 'Javascript es divertido', su hacker speak es: 'J4v45c1pt 35 d1v3rt1d0'.

function hackerSpeak(str) {

    let hackerMap = {
        'a': '4',
        'e': '3',
        'i': '1',
        'o': '0',
        's': '5'
    };

    let newStr = '';
    for (let i = 0; i < str.length; i++) {
        let letra = str[i];
        newStr += hackerMap[letra] || letra;
    }
    return newStr;
}

let str = 'Javascript es divertido';
console.log("Hacker Speak:", hackerSpeak(str));
