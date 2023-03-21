//PT-BR: quantifica o total de homens e mulheres em uma determinada lista, segundo informação do usuário
//EN: calculates the number of men and women in a list, with user input

programa
{
    funcao inicio()
    {
        inteiro n, s, homens = 0, mulheres = 0
        escreva("Informe o número total de pessoas: ")
        leia(n)
        escreva("Para as próximas perguntas, considere que:\n1: homem\n2: mulher\n")
        inteiro i = 1
        enquanto (i <= n)
        {
            escreva("Informe o sexo da pessoa " + i + ": ")
            leia(s)
            se (s == 1)
            {
                homens++
                i++
            }
            senao se (s == 2)
            {
                mulheres++
                i++
            }
            senao
            {
                escreva("Por favor, insira uma informação válida.\n")
            }
        }
        escreva("Total de homens: " + homens + ".\n")
        escreva("Total de mulheres: " + mulheres + ".\n")
    }
}
