const readLine = require('readline-sync');

let number1 = readLine.questionInt('Digite o 1o número: ');
let number2 = readLine.questionInt('Digite o 2o número: ');
let operation = readLine.questionInt('Digite a operação: ');

let result;

switch (operation) {
    case 1:
        result = number1 + number2;
        console.log(`${number1} + ${number2} = ${result}`);
        break;
    case 2:
        result = number1 - number2;
        console.log(`${number1} - ${number2} = ${result}`);
        break;
    case 3:
        result = number1 * number2;
        console.log(`${number1} * ${number2} = ${result}`);
        break;
    case 4:
        result = number1 / number2;
        console.log(`${number1} / ${number2} = ${result}`);
        break;
    default:
        console.log('Operação Inválida!');
}