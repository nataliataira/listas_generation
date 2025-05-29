const readLine = require('readline-sync');

let multiplesOf3Sum = 0;
let multiplesOf3Count = 0;
let continueLoop = true;
let average = 0;

do {
    let input = readLine.questionInt('Digite um número: ');
    if (input === 0) {
        continueLoop = false;
    } else if (input % 3 === 0) {
        multiplesOf3Sum += input;
        multiplesOf3Count++;
    }
} while (continueLoop)

if (multiplesOf3Count > 0) {
    average = multiplesOf3Sum / multiplesOf3Count;
    console.log(`A média de todos os números múltiplos de 3 é: ${average}`);
} else {
    console.log(`Nenhum número múltiplo de 3 foi digitado.`);
}