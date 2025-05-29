const readLine = require('readline-sync');

let id = readLine.questionInt('Digite o código do Produto: ');
let quantity = readLine.questionInt('Digite a quantidade: ');
let total;
let price;

switch (id) {
    case 1:
        price = 10.00;
        console.log(`Produto: Cachorro Quente`);
        break;
    case 2:
        price = 15.00;
        console.log(`Produto: X-Salada`);
        break;
    case 3:
        price =  18.00;
        console.log(`Produto: X-Bacon`);
        break;
    case 4:
        price =  12.00;
        console.log(`Produto: Bauru`);
        break;
    case 5:
        price =  8.00;
        console.log(`Produto: Refrigerante`);
        break;
    case 6:
        price =  13.00;
        console.log(`Produto: Suco de laranja`);
        break;
}

total = price * quantity;
total =  new Intl.NumberFormat('pt-BR', {
    style : 'currency',
    currency: 'BRL',
}).format(total);
console.log(`Valor total: ${total}`);