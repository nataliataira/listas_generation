const readLine = require('readline-sync');

let value = readLine.questionInt('Digite um número: ', {limitMessage: 'Por favor digite um número válido.'});
let positive = false;
let odd = true;

if (value % 2 === 0) {
    odd = false;
}

if (value > 0) {
    positive = true;
}

if (positive && odd) {
    console.log(`O Numero ${value} é positivo e impar`);
} else if (positive && !odd) {
    console.log(`O Numero ${value} é positivo e par`);
} else if (!positive && odd) {
    console.log(`O Numero ${value} é negativo e impar`);
} else {
    console.log(`O Numero ${value} é negativo e par`);
}