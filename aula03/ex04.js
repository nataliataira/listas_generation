const readLine = require('readline-sync');

let age;
let genderIdentity;
let devType;
let averageAge;

let backend = 0;
let womanFrontend = 0;
let menMobileBiggerThan40 = 0;
let nbFullstackLowerThan30 = 0;
let responseNumber = 0;
let agesSum = 0;
let continueLoop = true;

while (continueLoop) {
    age = readLine.questionInt('Idade: ', {limitMessage: 'Por favor digite uma idade válida.'});
    genderIdentity = readLine.questionInt('Identidade de Gênero: ', {limitMessage: 'Por favor digite uma opcao válida.'});
    devType = readLine.questionInt('Pessoa Desenvolvedora: ', {limitMessage: 'Por favor digite uma opcao válida.'});
    if ((genderIdentity === 1 && devType === 2) || (genderIdentity === 4 && devType === 2)) {
        womanFrontend++;
    }
    if ((age > 40) && ((genderIdentity === 2 && devType === 3) || (genderIdentity === 5 && devType === 3))) {
        menMobileBiggerThan40++;
    }
    if (age < 30 && genderIdentity === 3 && devType === 4) {
        nbFullstackLowerThan30++;
    }
    if (devType === 1) {
        backend++;
    }
    agesSum+=age;
    responseNumber++;
    continueLoop = readLine.keyInYNStrict('Deseja continuar? ');
}

averageAge = agesSum / responseNumber;

console.log(`Total de pessoas desenvolvedoras Backend: ${backend}`);
console.log(`Total de Mulheres Cis e Trans desenvolvedoras Frontend: ${womanFrontend}`);
console.log(`Total de Homens Cis e Trans desenvolvedores Mobile maiores de 40 anos: ${menMobileBiggerThan40}`);
console.log(`Total de Pessoas Não Binárias desenvolvedoras FullStack menores de 30 anos: ${nbFullstackLowerThan30}`);
console.log(`O número total de pessoas que responderam à pesquisa: ${responseNumber}`);
console.log(`A média de idade das pessoas que responderam à pesquisa: ${averageAge.toFixed(2)}`);