//PT-BR: informa o desconto a partir do valor da compra
//EN: informs discount on purchase total

programa
{
    inclua biblioteca Tipos --> t
    funcao inicio()
    {
        real compra, percent = 0.0
        inteiro desc = 0    
        escreva("Informe o valor da compra: ")
        leia(compra)
        se (compra >= 500)
        {
            desc = (compra - 400)/100
            //o programa avisa que o valor acima será truncado, mas esse é o objetivo,
            //pegar apenas a parte inteira da divisão
            se (desc > 25) {desc = 25}
            percent = t.inteiro_para_real(desc)/100
        }
        escreva("Valor final:\nR$ " + compra + " - " + desc + "% = R$ " + compra*(1.0 - percent))
    }
}