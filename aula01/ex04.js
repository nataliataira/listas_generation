const readline = require('readline-sync');

let n1 = readline.questionFloat('Digite o 1o valor: ', {limitMessage: 'Por favor digite um valor válido.'});
let n2 = readline.questionFloat('Digite o 2o valor: ', {limitMessage: 'Por favor digite um valor válido.'});
let n3 = readline.questionFloat('Digite o 3o valor: ', {limitMessage: 'Por favor digite um valor válido.'});
let n4 = readline.questionFloat('Digite o 4o valor: ', {limitMessage: 'Por favor digite um valor válido.'});

let result = (n1 * n2) - (n3 * n4);

console.log("A diferença entre diferença do produto entre o n1 e n2 pelo produto entre o n3 e o n4 é: " + new Intl.NumberFormat('pt-BR', {
    minimumFractionDigits: 1,
    maximumFractionDigits: 1
}).format(result));