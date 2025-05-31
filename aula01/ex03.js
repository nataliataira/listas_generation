const readline = require('readline-sync');

let grossSalary = readline.questionFloat("Insira o salário bruto: ", {limitMessage: 'Digite uma salário válido.'});
let nightShiftBonus = readline.questionFloat("Insira o adicional noturno: ", {limitMessage: 'Digite um adicional válido.'});
let overtimeHours = readline.questionFloat("Insira a quantidade de horas extras: ", {limitMessage: 'Digite horas extras válidas.'});
let deductions = readline.questionFloat("Insira o desconto: ", {limitMessage: 'Digite um desconto válido.'});

let netSalary = grossSalary + nightShiftBonus + (overtimeHours * 5) - deductions;

console.log("O salário bruto é " + new Intl.NumberFormat('pt-BR', {
    style : 'currency',
    currency: 'BRL',
}).format(netSalary));