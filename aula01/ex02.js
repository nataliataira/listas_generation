const readline = require('readline-sync');

let grade1 = readline.questionFloat('Digite a 1a nota: ', {limitMessage: 'Por favor digite uma nota válida.'});
let grade2 = readline.questionFloat('Digite a 2a nota: ', {limitMessage: 'Por favor digite uma nota válida.'});
let grade3 = readline.questionFloat('Digite a 3a nota: ', {limitMessage: 'Por favor digite uma nota válida.'});
let grade4 = readline.questionFloat('Digite a 4a nota: ', {limitMessage: 'Por favor digite uma nota válida.'});

let average = (grade1 + grade2 + grade3 + grade4) / 4;

console.log("A média das notas é " + new Intl.NumberFormat('pt-BR', {
    minimumFractionDigits: 1,
    maximumFractionDigits: 1
}).format(average));