import readLine from 'readline-sync';

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