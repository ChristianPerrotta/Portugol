programa
{
	
	funcao inicio()
	{
		inteiro qtEq, a, r1, r2
		cadeia sol
		escreva("Boas vindas ao gerador de equações do segundo grau.")
		escreva("\nVamos definir alguns parâmetros antes de gerar as equações.")
		escreva("\nQuantas equações serão geradas? ")
		leia(qtEq)
		escreva("Mostra conjunto solução? (S/N) ")
		leia(sol)

		para (inteiro i = 1; i <= qtEq; i++)
		{
			a = sorteia(-10, 5)
			se (a <= 0)
			{
				a = 1
			}
			r1 = sorteia(-10, 10)
			r2 = sorteia(-10, 10)

			calcula_a(a)
			calcula_b(a, r1, r2)
			calcula_c(a, r1, r2)
			escreva("= 0")
			se (sol == "S" ou sol == "s")
			{
				se (r1 == r2)
				{
					escreva("        S = {" + r1 + "}")
				}
				senao
				{
					escreva("        S = {" + r1 + ", " + r2 + "}")
				}
			}
			escreva("\n")
						
		}
	}
	
	funcao calcula_a(inteiro a_a)
	{
		 se (a_a == 1)
		 {
		 	escreva ("x² ")
		 }
		 senao
		 {
		 	escreva (a_a + "x² ")
		 }
	}

	funcao calcula_b(inteiro b_a, inteiro b_x1, inteiro b_x2)
	{
		inteiro b = -1 * b_a * (b_x1 + b_x2)
		se (b > 0 e b!=1)
		{
			escreva ("+ " + b + "x ")
		}
		senao se (b < 0)
		{
			b = b*(-1)
			escreva("- " + b + "x ")
		}
		senao
		{
			escreva("+x ")
		}
	}

	funcao calcula_c(inteiro c_a, inteiro c_x1, inteiro c_x2)
	{
		inteiro c = c_a * c_x1 * c_x2
		se (c > 0)
		{
			escreva ("+ " + c + " ")
		}
		senao se (c < 0)
		{
			c = c*(-1)
			escreva("- " + c + " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 369; 
 * @DOBRAMENTO-CODIGO = [44, 56];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
