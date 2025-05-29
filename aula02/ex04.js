const readLine = require('readline-sync');

let input1 = readLine.question();
let input2 = readLine.question();
let input3 = readLine.question();


if (input1 === "vertebrado" && input2 === "ave" && input3 === "carnivoro") {
    console.log('Águia');
} else if (input1 === "vertebrado" && input2 === "ave" && input3 === "onivoro") {
    console.log('Pomba');
} else if (input1 === "vertebrado" && input2 === "mamifero" && input3 === "onivoro") {
    console.log('Homem');
} else if (input1 === "vertebrado" && input2 === "mamifero" && input3 === "herbivoro") {
    console.log('Vaca');
} else if (input1 === "invertebrado" && input2 === "inseto" && input3 === "hematofago") {
    console.log('Pulga');
} else if (input1 === "invertebrado" && input2 === "inseto" && input3 === "herbivoro") {
    console.log('Lagarta');
} else if (input1 === "invertebrado" && input2 === "anelideo" && input3 === "hematofago") {
    console.log('Sanguessuga');
} else if (input1 === "invertebrado" && input2 === "anelideo" && input3 === "onivoro") {
    console.log('Minhoca');
}