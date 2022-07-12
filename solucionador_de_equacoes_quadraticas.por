programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Matematica --> m
	
	funcao logico verifica_inteiro(real x)
	{
		inteiro versao_inteira = t.real_para_inteiro(x)
		logico e_inteiro
		se (versao_inteira == x)
		{
			//Se der verdadeiro, então o número é inteiro
			e_inteiro = verdadeiro
		}
		senao
		{
			//Se der falso, então o número não é inteiro
			e_inteiro = falso
		}
		retorne e_inteiro
	}
	
	funcao inicio()
	{
		real a, b, c, delta, r1, r2
		inteiro intDelta, intR1, intR2
		escreva("Boas vindas ao solucionador de equações do 2º grau.\n")
		escreva("Serão pedidos, um de cada vez, os valores dos coeficientes a, b e c.\n")
		escreva("Por favor, informe o valor do coeficiente a: ")
		leia(a)
		escreva("Por favor, informe o valor do coeficiente b: ")
		leia(b)
		escreva("Por favor, informe o valor do coeficiente c: ")
		leia(c)
		
		delta = b*b - 4*a*c
		
		/* A função seguinte serve para identificar se delta é inteiro ou não.
		 * Isso evita que um delta valendo 2, por exemplo, seja escrito como 2.0.
		 * O mesmo vai ser feito mais à frente com as duas raízes.
		 */
		 
		logico sera_q_e_inteiro = verifica_inteiro(delta)
		se (sera_q_e_inteiro == verdadeiro)
		{
			intDelta = t.real_para_inteiro(delta)
			escreva("O valor de Delta é " + intDelta + ".\n")
		}
		senao
		{
			escreva("O valor de Delta é " + delta + ".\n")
		}
		se (delta < 0)
		{
			escreva("A equação não possui soluções reais, pois Delta tem valor negativo.\n")
		} senao
		{
			r1 = ((-1) * b + m.raiz(delta, 2.0))/(2*a)
			r2 = ((-1) * b - m.raiz(delta, 2.0))/(2*a)
			escreva("O conjunto solução da equação é ")

			/* Os condicionais seguintes evitam que, no caso de duas raízes iguais,
			 * elas apareçam duas vezes no conjunto solução
			 */
			
			se (r1 == r2)
			{
				sera_q_e_inteiro = verifica_inteiro(r1)
				se (sera_q_e_inteiro == verdadeiro)
				{
					intR1 = t.real_para_inteiro(r1)
					escreva("S = {" + intR1 + "}.\n")
				}
				senao
				{
					escreva("S = {" + r1 + "}.\n")
				}
			}
			senao
			{
				escreva("S = {")
				//verifica primeira raiz r1
				sera_q_e_inteiro = verifica_inteiro(r1)
				se (sera_q_e_inteiro == verdadeiro)
				{
					intR1 = t.real_para_inteiro(r1)
					escreva(intR1 + ", ")
				}
				senao
				{
					escreva(r1 + ", ")
				}
				//verifica segunda raiz r2
				sera_q_e_inteiro = verifica_inteiro(r2)
				se (sera_q_e_inteiro == verdadeiro)
				{
					intR2 = t.real_para_inteiro(r2)
					escreva(intR2)
				}
				senao
				{
					escreva(r2)
				}
				escreva("}.\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2526; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */