const readLine = require('readline-sync');

let inputSum = 0;
let continueLoop = true;

do {
    let input = readLine.questionInt('Digite um número: ', {limitMessage: 'Por favor digite um número válido.'});
    if (input > 0) {
        inputSum += input;
    } else if (input === 0) {
        continueLoop = false;
    }
} while (continueLoop)

console.log(`A soma dos números positivos é: ${inputSum}`);