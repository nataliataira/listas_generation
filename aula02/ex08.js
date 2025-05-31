const readLine = require('readline-sync');

let operation = readLine.questionInt('Digite a operação: ', {limitMessage: 'Digite uma operação válida.'});

let value;
let balance = 1000.00;

switch (operation) {
    case 1:
        console.log(`Operação - Saldo`);
        balance =  new Intl.NumberFormat('pt-BR', {
            style : 'currency',
            currency: 'BRL',
        }).format(balance);
        console.log(`Saldo: ${balance}`);
        break;
    case 2:
        value = readLine.questionFloat('Digite o valor: ');
        console.log(`Operação - Saque`);
        if (value <= balance) {
            balance -= value;
            balance =  new Intl.NumberFormat('pt-BR', {
                style : 'currency',
                currency: 'BRL',
            }).format(balance);
            console.log(`Novo saldo: ${balance}`);
        } else {
            console.log('Saldo Insuficiente!');
        }
        break;
    case 3:
        value = readLine.questionFloat('Digite o valor: ');
        console.log(`Operação - Depósito`);
        if (value > 0) {
            balance += value;
            balance =  new Intl.NumberFormat('pt-BR', {
                style : 'currency',
                currency: 'BRL',
            }).format(balance);
            console.log(`Novo Saldo: ${balance}`);
        } else {
            console.log('Não pode haver depósito de valor negativo');
        }
        break;
    default:
        console.log('Operação Inválida!');
}