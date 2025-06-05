programa {
  funcao inicio() {
    inteiro indice1, indice2, auxiliar, tamanhoVetor, vetor[10] = {2, 5, 1, 3, 4, 9, 7, 8, 10, 6}

    tamanhoVetor = 10
    indice1 = 0

    enquanto (indice1 < tamanhoVetor) {
      indice2 = 0
      enquanto (indice2 < tamanhoVetor - indice1 - 1) {
        se (vetor[indice2] > vetor[indice2 + 1]) {
          auxiliar = vetor[indice2]
          vetor[indice2] = vetor[indice2 + 1]
          vetor[indice2 + 1] = auxiliar
        }
        indice2 += 1
      }
      indice1 += 1
    }

    indice1 = 0
    enquanto (indice1 < tamanhoVetor) {
      escreva(vetor[indice1]," ")
      indice1 += 1
    }
  }
}
