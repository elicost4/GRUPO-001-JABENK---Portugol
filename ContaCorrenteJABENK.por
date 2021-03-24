programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		contaCorrente()
	}
	funcao contaCorrente()
	{
		real movimentacoes[10]                   
	     cadeia numeroConta = "0001", cpf = "123"
	     real saldoCorrente = 0.0
	     caracter tipoTransacao, aceitaCheque
	     inteiro talaoCheque = 0
	     caracter continuar

     		  para (inteiro m=0; m<10; m++)
     	{
	            escreva("\nMovimento: ",m+1,"\n")
	            escreva("Saldo atual: R$",saldoCorrente,"\n")
	            escreva("\nQual transação deseja realizar?\n[C]Crédito ou [D]Débito: ")
	            leia (tipoTransacao)
	            
	            se (tipoTransacao == 'C' ou tipoTransacao=='c')
	                {
	                    escreva("Informe o valor da transação: R$")
	                    leia (movimentacoes[m])
	                    saldoCorrente = saldoCorrente + movimentacoes[m]
	                    escreva("Continua S/N: ")
						leia(continuar)
						se (continuar == 'N' ou continuar == 'n')
						{
						pare
						}
	                }
	                senao se (tipoTransacao =='D' ou tipoTransacao =='d')
	                {
	                    escreva("Informe o valor da transação: R$")
	                    leia (movimentacoes[m])
	                    saldoCorrente = saldoCorrente - movimentacoes[m]
	                    se (saldoCorrente <= 0)
	                    {
	                		escreva("Você nao possui saldo suficiente!! \n")
	                		escreva ("\nVocê possui talão de cheque disponivel : ",talaoCheque++,"\nDeseja solicitar [S]Sim ou [N]Não: ")
	                		leia (aceitaCheque)
	                		escreva("Continua S/N: ")
						leia(continuar)
						se (continuar == 'N' ou continuar == 'n')
						{
						pare
						}
	                		limpa()
	                		se (aceitaCheque == 'S' ou aceitaCheque == 's')
	                		{
	                			escreva("Seu novo codigo de talao de cheque é :", talaoCheque++)
	                			               			
	                		}
	                		                				                		
	                	}
	                	
	                }
	                senao
	                {
	                	escreva("Você não digitou um opção válida")
	                }   	 
  		}
      escreva("\nObrigado por utilizar JABENK")  	
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2050; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */