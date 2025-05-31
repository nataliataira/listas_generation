import readLine from 'readline-sync';
import { Stack } from './stack';

let input;
const stack: Stack<string> = new Stack<string>();
let options: Array<string> = new Array(
    'Adicionar um novo livro na pilha.',
    'Listar todos os Livros na pilha.',
    'Retirar um livro da pilha.'
);

while (true) {
    let selectedOption = readLine.keyInSelect(
        options, 
        'Digite uma opção: ', {
            limitMessage: 'Digite uma opção válida',
            cancel: 'Finalizar o programa.'
    })

    if (selectedOption == -1) {
        console.log('\nPrograma finalizado!');
        break;
    }

    switch (selectedOption) {
        case 0:
            stack.push(readLine.question('\nDigite o nome: '));
            console.log('\nPilha: \n');
            stack.printStack();
            console.log('\nLivro adicionado!');
            break;
        case 1:
            if (stack.isEmpty()) {
                console.log('\nA Pilha está vazia!');
                continue;
            }
            console.log('\nLista de Livros na Pilha: \n');
            stack.printStack();
            break;
        case 2:
            if (stack.isEmpty()) {
                console.log('\nA Pilha está vazia!');
                continue;
            }
            console.log('\nPilha: \n');
            stack.pop();
            stack.printStack();
            break;
    }
}

