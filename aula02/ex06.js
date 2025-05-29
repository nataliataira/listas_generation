const readLine = require('readline-sync');

let name = readLine.question('Digite seu nome: ');
let id = readLine.questionInt('Digite o número do cargo: ');
let salary = readLine.questionFloat('Digite o salário: ');
let newSalary;
let reajust;

console.log(`Nome do colaborador: ${name}`);

switch (id) {
    case 1:
        reajust = 1.1;
        console.log(`Cargo: Gerente`);
        break;
    case 2:
        reajust = 1.07;
        console.log(`Cargo: Vendedor`);
        break;
    case 3:
        reajust =  1.09;
        console.log(`Cargo: Supervisor`);
        break;
    case 4:
        reajust =  1.06;
        console.log(`Cargo: Motorista`);
        break;
    case 5:
        reajust =  1.05;
        console.log(`Cargo: Estoquista`);
        break;
    case 6:
        reajust =  1.08;
        console.log(`Cargo: Técnico de TI`);
        break;
}

newSalary = reajust * salary;
newSalary =  new Intl.NumberFormat('pt-BR', {
    style : 'currency',
    currency: 'BRL',
}).format(newSalary);
console.log(`Valor total: ${newSalary}`);