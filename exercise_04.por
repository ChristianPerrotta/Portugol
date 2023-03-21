//PT-BR: lê informações sobre salário e responde com informações sobre folha de pagamento, imposto de renda etc.
//EN: reads information about salary and replies with paying check information, taxes etc.

programa
{
    funcao inicio()
    {
        real valor_hora, horas, salario_bruto, taxa_IR, INSS, sindicato, descontos
        escreva("Por favor, informe o valor de sua hora trabalhada, em reais: ")
        leia(valor_hora)
        escreva("Por favor, informe a quantidade de horas trabalhadas no mês: ")
        leia(horas)
        salario_bruto = valor_hora*horas

        se (salario_bruto <= 900)
        {
            taxa_IR = 0.0
        }
        senao se (salario_bruto <= 1500)
        {
            taxa_IR = 0.05
        }
        senao se (salario_bruto <= 2500)
        {
            taxa_IR = 0.1
        }
        senao
        {
            taxa_IR = 0.2
        }
        
        INSS = salario_bruto*0.1
        sindicato = salario_bruto*0.03
        descontos = taxa_IR*salario_bruto + INSS + sindicato

        escreva("Salário bruto        : R$ " + salario_bruto + "\n")
        escreva("- IR (" + taxa_IR*100 + "%)        : R$ " + taxa_IR*salario_bruto + "\n")
        escreva("- INSS (10%)        : R$ " + INSS + "\n")
        escreva("- Sindicato (3%)    : R$ " + sindicato + "\n")
        escreva("FGTS (11%)        : R$ " + salario_bruto*0.11 + "\n")
        escreva("Total de descontos    : R$ " + descontos + "\n")
        escreva("Salário Líquido        : R$ " + (salario_bruto - descontos))
    }
}