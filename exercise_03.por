//PT-BR: lê espaço e tempo, e devolve a velocidade
//EN: reads space and time, and replies with speed

programa
{
    funcao inicio()
    {
        real espaco, tempo
        escreva("Informe o espaço: ")
        leia(espaco)
        escreva("Informe o tempo: ")
        leia(tempo)
        escreva("Velocidade: " + espaco/tempo + ".")
    }
}