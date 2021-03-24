programa
{
	//Kathleen - tela 1 e 2, conta poupança
	//Bru - conta empresa
	//Anderson - conta especial
	//Eli - conta corrente
	//João - conta estudantil
	
	inclua biblioteca Util
	inteiro numero = 0
	cadeia cpf = ""
	real saldo = 0.00
	real saldoMovimento 
	logico ativa = verdadeiro
	real saldoCorrente = 0.00
	real saldoEspecial = 0.00
	real saldoEmpresa = 0.00
	real saldoEstudantil = 0.00
	real limiteEspecial = 1000.00
	real limiteEmpresa = 10000.00
	real limiteEstudantil = 5000.00
	
	funcao inicio()
	{
		caracter codigo
		cadeia tipo
		
		faca{
			limpa()
			escreva("JABENK\n")
			escreva("MANTEMOS OS SEUS SEGREDOS CONOSCO\n")
	
			escreva("Olá, selecione o tipo de conta: \n1-Conta Poupança\n2-Conta Corrente\n3-Conta Especial\n4-Conta Empresa\n5-Conta Estudantil\n6-Sair\n")
			escreva("Digite o código da opção selecionada: ")
			leia(codigo)

			se (codigo == '1'){
				tipo = "POUPANÇA"
				cabecalho(tipo)
				contaPoupanca()
				Util.aguarde(2000)
			}
			senao se (codigo == '2'){
				tipo = "CORRENTE"
				cabecalho(tipo)
				contaCorrente()
				Util.aguarde(2000)
			}
			senao se (codigo == '3'){
				tipo = "ESPECIAL"
				cabecalho(tipo)
				contaEspecial()
				Util.aguarde(2000)
			}
			senao se (codigo == '4'){
				tipo = "EMPRESA"
				cabecalho(tipo)
				contaEmpresa()
				Util.aguarde(2000)
			}
			senao se (codigo == '5'){
				tipo = "ESTUDANTIL"
				cabecalho(tipo)
				contaEstudantil()
				Util.aguarde(2000)
			}
			senao se (codigo == '6'){
				escreva("Você escolheu Sair\n")
				Util.aguarde(2000)
				pare
			}
			senao{
				escreva("Você não escolheu um número entre 1 e 6")
				Util.aguarde(2000)
			}
			
		}enquanto (codigo != '6')
			escreva("Fim de programa, volte sempre!!")
	}
//Função segunda tela
		funcao cabecalho(cadeia tipo){
			caracter aux
			limpa()
			escreva("JABENK\n")
			escreva("MANTEMOS OS SEUS SEGREDOS CONOSCO\n")
			escreva("\n")
			escreva("CONTA ",tipo,"\n")
			escreva("CPF: ")
			leia(cpf)
			escreva("1 - Ativo ou 2 - Inativo: ")
			leia(aux)
			se (aux == '1'){
				ativa = verdadeiro
			}
			senao{
				ativa = falso
			}
		}
//Função conta Poupança
		funcao contaPoupanca(){
				caracter codigo
				cadeia tipo
				
				caracter diaAniversarioPoupanca
				caracter auxDebitoCredito
				caracter auxDia
				caracter auxSair
				
				escreva("Digite o dia do seu aniversário: ")
				leia(diaAniversarioPoupanca)
				para (inteiro x=1; x<=10; x++){
					escreva("\nMovimento : ", x)
					escreva("\nSaldo atual: ", saldo)
					escreva("\nD - Débito ou C - Crédito: ")
					leia(auxDebitoCredito)
					escreva("Valor do movimento: ")
					leia(saldoMovimento)
					se (auxDebitoCredito == 'D' ou auxDebitoCredito == 'd' ){
						enquanto (saldoMovimento > saldo){
							escreva("Valor acima do permitido, tente novamente!\n")
							escreva("Saldo atual: ", saldo, "\n")
							escreva("Digite novamente o valor para Débito: ")
							leia(saldoMovimento)
						}
						saldo = saldo - saldoMovimento
					}senao se (auxDebitoCredito == 'C' ou auxDebitoCredito == 'c'){
						saldo = saldo + saldoMovimento
					}
					escreva("Continua S/N: ")
					leia(auxSair)
					se (auxSair == 'N' ou auxSair == 'n'){
						pare
					}
				}
				
				escreva("Qual o dia de hoje?: ")
				leia(auxDia)
				se (auxDia == diaAniversarioPoupanca){
					saldo = (saldo*0.05) + saldo
				}
				escreva("\nCPF: ", cpf)
				escreva("\nAtiva: ", ativa)
				escreva("\nDia de aniversário: ",diaAniversarioPoupanca)
				escreva("\nSaldo: ", saldo)
				Util.aguarde(4000)
			}

//função conta Corrente
	funcao contaCorrente()
	{
		real movimentacoes[10]                   
	     cadeia numeroConta = "0001"
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
	                	escreva("Continua S/N: ")
					leia(continuar)
					se (continuar == 'N' ou continuar == 'n'){
						pare
					}
	                }
	                senao
	                {
	                	escreva("Você não digitou um opção válida")
	                }   	 
  		}
      escreva("\nObrigado por utilizar JABENK")  	
}

	

//Função conta Especial
	funcao contaEspecial(){
	cadeia tipo
	
	caracter auxDebitoCredito
	caracter auxSair
	
	para (inteiro x=1; x<=10; x++){
		
		escreva("\nMovimento : ", x)
		escreva("\nSaldo atual: ", saldoEspecial)
		escreva("\nLimite Especial: ", limiteEspecial)
		
		escreva("\nD - Débito ou C - Crédito: ")
		leia(auxDebitoCredito)
		escreva("Valor do movimento: ")
		leia(saldoMovimento)
		
		se (auxDebitoCredito == 'D' ou auxDebitoCredito == 'd' ){
			enquanto (saldoMovimento > (saldoEspecial + limiteEspecial)){
				escreva("Valor acima do permitido, tente novamente!\n")
				escreva("Saldo atual: ", saldoEspecial, "\n")
				escreva("Limite Especial: ", limiteEspecial, "\n")
				escreva("Digite novamente o valor para Débito: ")
				leia(saldoMovimento)
			}

			se(saldoMovimento > saldo){
				limiteEspecial = limiteEspecial - (saldoMovimento - saldoEspecial)
				saldoEspecial = 0.00
			}senao{
				saldoEspecial = saldoEspecial - saldoMovimento
			}
			
		}senao se (auxDebitoCredito == 'C' ou auxDebitoCredito == 'c'){
			saldoEspecial = saldoEspecial + saldoMovimento
		}
		escreva("Continua S/N: ")
		leia(auxSair)
		se (auxSair == 'N' ou auxSair == 'n'){
			pare
		}
	}
}	

//Função conta Empresa
	funcao contaEmpresa()
	{
				
				cadeia tipo
				caracter auxSair
				caracter auxDebitoCredito
				
				para (inteiro x=1; x<=10; x++){
					escreva("\nMovimento : ", x)
					escreva("\nSaldo atual: ", saldoEmpresa)
					escreva("\nLimite da conta Empresa: ", limiteEmpresa)
					escreva("\nD - Débito ou C - Crédito ou E - Empresa: ")
					leia(auxDebitoCredito)
					escreva("Valor do movimento: ")
					leia(saldoMovimento)
					se (auxDebitoCredito == 'D' ou auxDebitoCredito == 'd' ){
						enquanto (saldoMovimento > saldoEmpresa){
							escreva("Valor acima do permitido, tente novamente!\n")
							escreva("Saldo atual: ", saldoEmpresa, "\n")
							escreva("Digite novamente o valor para Débito: ")
							leia(saldoMovimento)
						}
						saldoEmpresa = saldoEmpresa - saldoMovimento
					}senao se (auxDebitoCredito == 'C' ou auxDebitoCredito == 'c'){
						saldoEmpresa = saldoEmpresa + saldoMovimento
					}
					senao se (auxDebitoCredito == 'E' ou auxDebitoCredito == 'e' ){
						se(saldoMovimento <= limiteEmpresa)
						{
							saldoEmpresa = saldoEmpresa + saldoMovimento 
							limiteEmpresa = limiteEmpresa - saldoMovimento		
						}senao{
							escreva("Operação não realizada pois o limite foi atingido\n")
							
						}
					}
					escreva("Continua S/N: ")
					leia(auxSair)
					se (auxSair == 'N' ou auxSair == 'n'){
						pare
					}
				}
	}     
	
//Função conta Estudantil	
	funcao contaEstudantil()
	{
				
		cadeia tipo
		caracter auxSair
		caracter auxDebitoCredito
		
		para (inteiro x=1; x<=10; x++){
			escreva("\nMovimento : ", x)
			escreva("\nSaldo atual: ", saldoEstudantil)
			escreva("\nLimite da conta Estudantil: ", limiteEstudantil)
			escreva("\nD - Débito ou C - Crédito ou E - Estudantil: ")
			leia(auxDebitoCredito)
			escreva("Valor do movimento: ")
			leia(saldoMovimento)
			se (auxDebitoCredito == 'D' ou auxDebitoCredito == 'd' ){
				enquanto (saldoMovimento > saldoEstudantil){
					escreva("Valor acima do permitido, tente novamente!\n")
					escreva("Saldo atual: ", saldoEstudantil, "\n")
					escreva("Digite novamente o valor para Débito: ")
					leia(saldoMovimento)
				}
				saldoEstudantil = saldoEstudantil - saldoMovimento
			}senao se (auxDebitoCredito == 'C' ou auxDebitoCredito == 'c'){
				saldoEstudantil = saldoEstudantil + saldoMovimento
			}
			senao se (auxDebitoCredito == 'E' ou auxDebitoCredito == 'e' ){
				se(saldoMovimento <= limiteEstudantil)
				{
					saldoEstudantil = saldoEstudantil + saldoMovimento 
					limiteEstudantil = limiteEstudantil - saldoMovimento		
				}senao{
					escreva("Operação não realizada pois o limite foi atingido\n")
					
				}
			}
			escreva("Continua S/N: ")
			leia(auxSair)
			se (auxSair == 'N' ou auxSair == 'n'){
				pare
			}
		}
	}     
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 923; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */