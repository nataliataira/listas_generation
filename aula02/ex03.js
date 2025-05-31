const readLine = require('readline-sync');

let name = readLine.question('Digite o nome do doador: ', {limitMessage: 'Digite um nome válido.'});
let age = readLine.questionInt('Digite a idade do doador: ', {limitMessage: 'Digite uma idade válida.'});
let firstTime = readLine.keyInYN('Primeira doação de sangue? ', {limitMessage: 'Input inválido.'});

if (age < 0 || age > 120) {
    console.log('A idade inválida');
    return;
} else if (age > 18 && age < 60) {
    console.log("%s esta apto/a a doar sangue!", name);
} else if (age > 60 && age < 69 && !firstTime) {
    console.log("%s esta apto/a a doar sangue!", name);
} else {
    console.log("%s não esta apto/a a doar sangue!", name);
}