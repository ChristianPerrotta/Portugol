//PT-BR: lê um número e responde com seu dobro e sua terça parte
//EN: reads a number input and replies with its double and its third

programa
{
    funcao inicio()
    {
        real num
        escreva("Informe o número: ")
        leia(num)
        escreva("Dobro: " + num*2 + ".\n")
        escreva("Terça parte: " + num/3 + ".")
    }
}