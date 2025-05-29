const readLine = require('readline-sync');

let numbers = [];
let odd = 0;
let even = 0;

for (let index = 0; index < 10; index++) {
    numbers[index] = readLine.questionInt('Digite o primeiro valor: ', {limitMessage: 'Por favor digite um número válido.'});
}

for (let index = 0; index < 10; index++) {
    if (numbers[index] % 2 === 0) {
        even++;
    } else {
        odd++;
    }
}

console.log(`Total de números pares: ${even}`);
console.log(`Total de números ímpares: ${odd}`);