let matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
];

let size = 3;
let mainDiagonal = [];
let secondaryDiagonal = [];
let secondaryDiagonalAux = 3;
let countMain = 0;
let countSecondary = 0;

for (let indexLine = 0; indexLine < size; indexLine++) {
    for (let indexColumn = 0; indexColumn < size; indexColumn++) {
        if (indexLine === indexColumn) {
            mainDiagonal[indexColumn] = matrix[indexLine][indexColumn];
        }
        if (indexColumn === secondaryDiagonalAux - 1) {
            secondaryDiagonal[indexColumn] = matrix[indexLine][indexColumn];
            secondaryDiagonalAux--;
        }
    }
}

for (let index = 0; index < size; index++) {
    countMain += mainDiagonal[index];
    countSecondary += secondaryDiagonal[index];
}

console.log(`Elementos da Diagonal Principal: `);
console.log(`${mainDiagonal[0]} ${mainDiagonal[1]} ${mainDiagonal[2]}`);

console.log(`Elementos da Diagonal Secundária: `);
console.log(`${secondaryDiagonal[0]} ${secondaryDiagonal[1]} ${secondaryDiagonal[2]}`);

console.log(`Soma dos Elementos da Diagonal Principal: \n${countMain}`);
console.log(`Soma dos Elementos da Diagonal Secundária: \n${countSecondary}`);