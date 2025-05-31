const readline = require('readline-sync');

let salary = readline.questionFloat("Digite o salário: ", {limitMessage: 'Digite um salário válido.'});
let allowance = readline.questionFloat("Digite o abono: ", {limitMessage: 'Digite um abono válido.'});

let newSalary = salary + allowance;

console.log("O novo salário é " + new Intl.NumberFormat('pt-BR', {
        style : 'currency',
        currency: 'BRL',
        minimumFractionDigits: 1,
        maximumFractionDigits: 1
}).format(newSalary));
