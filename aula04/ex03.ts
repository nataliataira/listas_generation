import readLine from 'readline-sync';

/**
 * Escreva um programa para criar uma Collection Set do tipo number. 
 * O programa deverá solicitar ao usuário, que ele digite via teclado 10 
 * valores inteiros não repetidos e adicione-os individualmente na Collection Set. 
 * Em seguida, faça o que se pede:
 *      Mostre na tela todos os elementos da Collection Set. 
 */

let inputNumber = 0;
let numberQuantity = 10;
const numbers: Set<number> = new Set();

for (let index = 0; index < numberQuantity; index++) {
    inputNumber = readLine.questionInt(`Digite o ${index + 1}o valor: `);
    numbers.add(inputNumber);
}

console.log(`\nListar dados do Set: `);
for (let number of numbers) {
    console.log(`${number}`);
}