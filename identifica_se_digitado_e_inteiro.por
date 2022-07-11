/* Feito para assegurar de que a informação digitada seja o que foi pedido
 * Isto é apenas uma parte de programa, a ser usada antes de outros comandos
 * Com ele, é possível evitar os erros em que é pedido um inteiro e o usuário digita uma string ou caractere*/

programa
{
	inclua biblioteca Util
	inclua biblioteca Tipos
	
	funcao inicio()
	{
		cadeia num_string
		inteiro num_int = 0
		faca
		{
			escreva("Escolha um número inteiro de 1 a 10 (inclusive): ")
			leia(num_string)
			se (Tipos.cadeia_e_inteiro(num_string, 10)!=verdadeiro)
			{
				Util.aguarde(200)
				limpa()
				escreva("A informação escolhida não é um número inteiro.\n")
			}
			senao
			{
				num_int = Tipos.cadeia_para_inteiro(num_string, 10)
				se (num_int < 1 ou num_int >10)
				{
					Util.aguarde(200)
					limpa()
					escreva("O número escolhido não está entre 1 e 10.\n")
					
				}
			}
		}
		enquanto (Tipos.cadeia_e_inteiro(num_string, 10)!=verdadeiro ou num_int < 1 ou num_int >10)
		Util.aguarde(200)
		limpa()
		
		//A partir daqui, pode-se escrever o restante do código
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 272; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
