//PT-BR: lê idades de 15 pessoas e responde com algumas estatísticas
//EN: reads the age of 15 people and replies with some statistics

programa
{
    inclua biblioteca Tipos --> t
    funcao inicio()
    {
        inteiro idade, faixa1 = 0, faixa2 = 0, faixa3 = 0, faixa4 = 0, faixa5 = 0
        inteiro i = 1
        real total_faixa_1, total_faixa_5

        enquanto (i <= 15)
        {
            escreva("Informe a idade da pessoa " + i + ": ")
            leia(idade)
            se (idade <= 15)
            {
                faixa1++
            }
            senao se (idade <= 30)
            {
                faixa2++
            }
            senao se (idade <= 45)
            {
                faixa3++
            }
            senao se (idade <= 60)
            {
                faixa4++
            }
            senao
            {
                faixa5++
            }

            i++
        }
        escreva("A distribuição das 15 idades é:")
        escreva("\nAté 15 anos: " + faixa1)
        escreva("\nDe 16 a 30 anos: " + faixa2)
        escreva("\nDe 31 a 45 anos: " + faixa3)
        escreva("\nDe 46 a 60 anos: " + faixa4)
        escreva("\nAcima de 61 anos: " + faixa5)
        total_faixa_1 = t.inteiro_para_real(faixa1)
        total_faixa_5 = t.inteiro_para_real(faixa5)
        escreva("\nAs pessoas com idade até 15 anos correspondem a " + (total_faixa_1/15)*100 + "% do total.")
        escreva("\nAs pessoas com idade acima de 61 anos correspondem a " + (total_faixa_5/15)*100 + "% do total.")
    }
}