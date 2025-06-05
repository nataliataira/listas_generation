const readLine = require('readline-sync');

let firstNumber = readLine.questionInt('Digite o primeiro número do intervalo: ', {limitMessage: 'Por favor digite um número válido.'});
let secondNumber = readLine.questionInt('Digite o segundo número do intervalo: ', {limitMessage: 'Por favor digite um número válido.'});

if (firstNumber > secondNumber) {
    console.log('Intervalo inválido!');
    return;
}

console.log(`No intervalor entre ${firstNumber} e ${secondNumber}: `);
for (let index = firstNumber; index <= secondNumber; index++) {
    if (index % 15 === 0) {
        console.log(`${index} é múltiplo de 3 e 5`);
    }
}