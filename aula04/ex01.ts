import readLine from 'readline-sync';

const colors: Array<string> = new Array();
const colorQuantity = 5;

for (let index = 0; index < colorQuantity; index++) {
    colors.push(readLine.question('Digite uma cor: '));
}

console.log('\nListar todas as cores: ');
for (let color of colors) {
    console.log(`${color}`);
}

colors.sort();

console.log('\nOrdenar as cores: ');
for (let color of colors) {
    console.log(`${color}`);
}