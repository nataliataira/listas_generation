const readLine = require('readline-sync');

let odd = 0;
let even = 0;

for (let index = 0; index < 10; index++) {
    let input = readLine.questionInt(`Digite o ${index + 1} número: `, {limitMessage: 'Por favor digite um número válido.'});
    if (input % 2 === 0) {
        even++;
    } else {
        odd++;
    }
}

console.log(`Total de números pares: ${even}`);
console.log(`Total de números ímpares: ${odd}`);