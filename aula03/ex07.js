const readLine = require('readline-sync');

let array = [2, 5, 1, 3, 4, 9, 7, 8, 10, 6];
let indexOfNumber = 0;

let numberToFind = readLine.questionInt('Digite o número que você deseja encontrar:', {limitMessage: 'Por favor digite um número válido.'});
indexOfNumber = array.indexOf(numberToFind);
if (indexOfNumber != -1) {
    console.log(`O número ${numberToFind} está localizado na posição: ${indexOfNumber}`);
} else {
    console.log(`O número ${numberToFind} não foi encontrado!`);
}