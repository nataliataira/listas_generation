programa {
  funcao inicio() {
    inteiro numeros[10], posicao, tamanhoArray, soma, media

    posicao = 0
    tamanhoArray = 10

    enquanto (posicao < tamanhoArray) {
      escreva("Digite um valor: ")
      leia(numeros[posicao])
      posicao += 1
    }

    posicao = 0
    escreva("\nElementos nos índices ímpares\n")
    enquanto (posicao < tamanhoArray) {
      se (posicao % 2 != 0) {
        escreva(numeros[posicao], " ")
      }
      posicao += 1
    }

    posicao = 0
    escreva("\nElementos pares\n")
    enquanto (posicao < tamanhoArray) {
      se (numeros[posicao] % 2 != 0) {
        escreva(numeros[posicao], " ")
      }
      posicao += 1
    }

    posicao = 0
    soma = 0
    escreva("Soma\n")
    enquanto (posicao < tamanhoArray) {
      soma += numeros[posicao]
      posicao += 1
    }

    media = 0
    escreva("Média\n")
    media = soma / tamanhoArray
    escreva(media)
  }
}
