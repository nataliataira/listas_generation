import readLine from 'readline-sync';

let wasFound = false;
const numbers: Array<number> = new Array(2, 5, 1, 3, 4, 9, 7, 8, 10, 6);
const numberToFind = readLine.questionInt('Digite o número que você deseja encontrar: ');


for (let number of numbers) {
    if (number === numberToFind) {
        console.log(`\nO número ${numberToFind} está localizado na posição: ${numbers.indexOf(numberToFind)}`);
        wasFound = true;
    }
}

if (!wasFound) {
    console.log(`\nO número ${numberToFind} não foi encontrado!`);
}