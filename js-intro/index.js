
// EJERCICIO 1

// Crea una función llamada isEven que reciba un número como argumento
// y devuelva true si el número es par o false si es impar.

// La función debe tener la siguiente firma:

function isEven(num) {
    if (num % 2 === 0){
        return true
    } else {
        return false
    }}


function isEven(num) {
    return (num % 2 === 0)
}
  
  //Ejemplo de uso:
  isEven(2); // true
  isEven(3); // false
  isEven(4); // true
  isEven(-2); // true



  
// EJERCICIO 2

// Crea una función llamada countLetters que reciba una palabra
// como argumento y devuelva la cantidad de letras que tiene.

// La función debe tener la siguiente firma:

function countLetters(word) {
    return word.length   
}
  

function countLetters(word) {
    let counter = 0;
    for (let i = 0; i < word.length; ++i){
        counter++;
    }  
    console.log(counter);
}

  //Ejemplo de uso:
  countLetters("hello"); // 5
  countLetters("goodbye"); // 7
  countLetters("home"); // 4
  countLetters(""); // 0



// EJERCICIO 3

// Crea una función llamada reverseWord que reciba una
// cadena de texto como argumento y devuelva la cadena invertida.

// La función debe tener la siguiente firma:

  function reverseWord(word) {
    let newWord = "";
    for (let i = word.length - 1; i >= 0; i--) {
        newWord += word[i];
    }
    return newWord;
}

function reverseWord(word){
    return (word.split("").reverse().join(""))
}


  
  //Ejemplo de uso:
  reverseWord("rotom"); // "motor"
  reverseWord("ekans"); // "snake"
  reverseWord("arbok"); // "kobra"
  reverseWord(""); // ""
  


// EJERCICIO 4

// Crea una función llamada `isPalindrome` que reciba una
// cadena de texto como argumento y devuelva
// `true` si la cadena es un palíndromo o
// `false` en caso contrario.
// Una cadena es un palíndromo si se lee igual al derecho
// que al revés.

//La función debe tener la siguiente firma:

function isPalindrome(word) {
    let newWord = word.split("").reverse().join("");
    return (word === newWord);
  }
  
  //Ejemplo de uso:
  isPalindrome("charmander"); // false
  isPalindrome("girafarig"); // true
  isPalindrome("chikorita"); // false
  isPalindrome("eevee"); // true
  isPalindrome(""); // true