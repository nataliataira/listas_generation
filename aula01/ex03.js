const readline = require('readline-sync');

let grossSalary = readline.questionFloat("Insira o salário bruto: ", {limitMessage: 'Por favor digite uma salário válido.'});
let nightShiftBonus = readline.questionFloat("Insira o adicional noturno: ", {limitMessage: 'Por favor digite um adicional válido.'});
let overtimeHours = readline.questionFloat("Insira a quantidade de horas extras: ", {limitMessage: 'Por favor digite horas extras válidas.'});
let deductions = readline.questionFloat("Insira o desconto: ", {limitMessage: 'Por favor digite um desconto válido.'});

let netSalary = grossSalary + nightShiftBonus + (overtimeHours * 5) - deductions;

console.log("O salário bruto é " + new Intl.NumberFormat('pt-BR', {
    style : 'currency',
    currency: 'BRL',
}).format(netSalary));