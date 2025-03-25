programa {
  funcao inicio() {
    
    cadeia modeloCarro // cadeia para armazenar o nome do carro
    inteiro valorDiarioLocacao // inteiro pro valor diario de locacao 
    inteiro kmPercorridos // inteiro para a quantia de km percorridos
    inteiro diasLocacao // inteiro para dias de locacao

    escreva("Informe o modelo do carro alugado: ") // perguntar
    leia(modeloCarro) // ler o input que o usuario escreveu e guardar na cadeia modeloCarro
    escreva("\nInforme o valor(R$) diaria para locacao: ") // perguntar
    leia(valorDiarioLocacao) // ler o input que o usuario escreveu e guardar no inteiro valorDiarioLocacao
    escreva("\nInforme a quantidade de dias de locacao: ") // perguntar
    leia(diasLocacao) // ler o input que o usuario escreveu e guardar no inteiro diasLocacao
    escreva("\nInforme a quantidade de Km percorridos: ") // perguntar
    leia(kmPercorridos) // ler o input que o usuario escreveu e guardar no inteiro kmPercorridos
    escreva("\Modelo do carro: " + modeloCarro) // informar modelo do carro
    escreva("\nValor total a pagar: " + (valorDiarioLocacao * diasLocacao) + (kmPercorridos * 0.20)) // informar o valor total
  }
}
