const readLine = require('readline-sync');

let numberA = readLine.questionInt('Digite o número A: ', {limitMessage: 'Digite um número válido.'});
let numberB = readLine.questionInt('Digite o número B: ', {limitMessage: 'Digite um número válido.'});
let numberC = readLine.questionInt('Digite o número C: ', {limitMessage: 'Digite um número válido.'});

let result = numberA + numberB;

if (result === numberC) {
    console.log(`${numberA} + ${numberB} = ${result} = ${numberC}`);
    console.log('A Soma de A + B é Igual a C');
} else if (result > numberC ) {
    console.log(`${numberA} + ${numberB} = ${result} > ${numberC}`);
    console.log('A Soma de A + B é Maior do que C');
} else {
    console.log(`${numberA} + ${numberB} = ${result} < ${numberC}`);
    console.log('A Soma de A + B é Menor do que C');
}