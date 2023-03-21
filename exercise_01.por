#PT-BR: lê um nome e responde com uma mensagem de boas vindas
#EN: reads a name and replies with a welcome message

programa
{
    funcao inicio()
    {
        cadeia nome
        escreva("Por favor, informe seu nome: \n")
        leia(nome)
        escreva("Olá, " + nome + ", seja muito bem-vindo(a)!")
    }
}