//PT-BR: lê 3 notas de um aluno e responde com informação sobre aprovação
//EN: reads 3 grades and informs if the student passed or failed

programa
{
    funcao inicio()
    {
        real nota1, nota2, nota3, media
        inteiro presenca
        escreva("Informe a primeira nota: ")
        leia(nota1)
        escreva("Informe a segunda nota: ")
        leia(nota2)
        escreva("Informe a terceira nota: ")
        leia(nota3)
        escreva("Informe a quantidade de aulas frequentadas: ")
        leia(presenca)
        media = (nota1 + nota2 + nota3)/3
        se (media >= 6)
        {
            se (presenca >= 40)
            {
                escreva("O(a) aluno(a) foi aprovado(a) na disciplina, e sua média foi " + media + ".")
            }
            senao
            {
                escreva("O(a) aluno(a) foi reprovado(a) na disciplina por ter presença nas aulas inferior a 40.")
            }
        }
        senao
        {
            escreva("O(a) aluno(a) foi reprovado(a) na disciplina, pois sua média foi de " + media + ".")
        }
    }
}