//PT-BR: calcula o valor do fatorial de um dado número
//EN: calculates factorial of a given number

//não levei em consideração o que ocorre caso o usuário não digite um número natural
programa
{
    funcao inicio()
    {
        inteiro num, fat = 1
        escreva("Digite um número para calcularmos seu fatorial: ")
        leia(num)
        enquanto (num > 0)
        {
            fat = fat*num
            num--
        }
        escreva("O fatorial do número dado é " + fat + ".")
    }
}
