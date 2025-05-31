import readLine from 'readline-sync';

let wasFound = false;
const numbers: Set<number> = new Set([2, 5, 1, 3, 4, 9, 7, 8, 10, 6]);
const numberToFind = readLine.questionInt('Digite o número que você deseja encontrar: ', {limitMessage: 'Digite um número válido.'});

for (let number of numbers) {
    if (number === numberToFind) {
        console.log(`O número ${numberToFind} foi encontrado!`);
        wasFound = true;
    }
}

if (!wasFound) {
    console.log(`\nO número ${numberToFind} não foi encontrado!`);
}