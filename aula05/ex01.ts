import readLine from 'readline-sync';
import { Queue } from './queue';

let input;
const queue: Queue<string> = new Queue<string>();
let options: Array<string> = new Array(
    'Adicionar um novo Cliente na fila.',
    'Listar todos os Clientes na fila.',
    'Chamar (retirar) uma pessoa da fila.'
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
            queue.enqueue(readLine.question('\nDigite o nome: '));
            console.log('\nFila: \n');
            queue.printQueue();
            console.log('\nCliente adicionado!');
            break;
        case 1:
            if (queue.isEmpty()) {
                console.log('\nA Fila está vazia!');
                continue;
            }
            console.log('\nLista de Clientes na Fila: \n');
            queue.printQueue();
            break;
        case 2:
            if (queue.isEmpty()) {
                console.log('\nA Fila está vazia!');
                continue;
            }
            console.log('\nFila: \n');
            queue.dequeue();
            queue.printQueue();
            break;
    }
}

