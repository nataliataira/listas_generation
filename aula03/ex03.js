const readLine = require('readline-sync');

let lessThan21 = 0;
let biggerThan50 = 0;
let age = 0;

while (true) {
    age = readLine.questionInt('Digite uma idade: ', {limitMessage: 'Por favor digite uma idade válida.'});
    if (age < 0) {
        break;
    }
    if (age < 21) {
        lessThan21++;
    } else if (age > 50) {
        biggerThan50++;
    }
}
console.log(`Total de pessoas menores de 21 anos: ${lessThan21}`);
console.log(`Total de pessoas maiores de 50 anos: ${biggerThan50}`);