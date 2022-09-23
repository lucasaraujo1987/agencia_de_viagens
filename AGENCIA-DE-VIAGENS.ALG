Algoritmo "agencia-de-viagens"
// Disciplina  : [Linguagem e Lógica de Programação]
// Professor   : Artur Brandt
// Descrição   : Aplicativo de agencia de viagens MaGi World Travel
// Autor(a)    : Lucas Sebatião de Araújo
// Data atual  : 07/07/2022
Var
   cpfcl, nomecl, endcl, cidadecl, estadocl, sn, destcl, embcl, cpfcad: caractere
   cont, opcao, tot: inteiro
   nome: vetor[1..50] de caractere
   cpf: vetor[1..50] de caractere
   end: vetor[1..50] de caractere
   cidade: vetor[1..50] de caractere
   estado: vetor[1..50] de caractere
   emb: vetor[1..50] de caractere
   dest: vetor[1..50] de caractere


procedimento menu() // Menu principal
inicio
      limpatela
      escreval("----------------------------")
      escreval("      MAGI WORLD TRAVEL     ")
      escreval("----------------------------")
      escreval()
      escreval("[1] CADASTRAR CLIENTES")
      escreval("[2] CADASTRAR DESTINO")
      escreval("[3] CONSULTAR TOTAL CADASTRADO")
      escreval("[4] CONSULTAR CLIENTE ESPECÍFICO")
      escreval("[5] CONSULTAR TODOS OS DESTINOS")
      escreval("[6] PARA SAIR")
      leia(opcao)
      escolha opcao
             caso 1
                  limpatela
                  cadastro()
             caso 2
                  limpatela
                  destino()
             caso 3
                  limpatela
                  consulta()
             caso 4
                  limpatela
                  cliente()
             caso 5
                  limpatela
                  destinoscad()
             outrocaso
                      escreval("Obrigado, Boa Viagem!")
      fimescolha
fimprocedimento    // Fim menu principal

procedimento cadastro()  // Menu de cadastro
inicio
      repita
           cont <- cont + 1
           tot <- tot + 1
           limpatela
           escreval("----------------------")
           escreval(" CADASTRO DE CLIENTES ")
           escreval("----------------------")
           escreva("Nome completo: ")
           leia(nomecl)
           nome[cont] <- nomecl
           escreva("CPF: ")
           leia(cpfcl)
           cpf[cont] <- cpfcl
           emb[cont] <- ""
           dest[cont] <- ""
           escreva("Endereço: ")
           leia(endcl)
           end[cont] <- endcl
           escreva("Cidade: ")
           leia(cidadecl)
           cidade[cont] <- cidadecl
           escreva("Estado (ex. RJ, SP):")
           leia(estadocl)
           estado[cont] <- estadocl
           escreval()
           repita
                 escreva("Cadastrar outra pessoa? [S/N]")
                 leia(sn)
                 se (maiusc(sn) <> "S") entao
                    escreval("INVALIDO!!!! Só digite 'S' ou 'N'")
                 fimse
           ate((maiusc(sn) = "S") ou (maiusc(sn) = "N"))
      ate (maiusc(sn) = "N")
      menu()
fimprocedimento // Fim menu de cadastro

procedimento destino()    //Menu de Destino
inicio
      escreval("-------------------")
      escreval("CADASTRO DE DESTINO")
      escreval("-------------------")
      escreval()
      repita
            escreval("Digite seu CPF: ")
            leia(cpfcad)
            para cont <- 1 ate tot faca
                  se (cpfcad = cpf[cont]) entao
                     escreval("Nome: ", nome[cont])
                     escreva("Local de Embarque: ")
                     leia(embcl)
                     emb[cont] <- embcl
                     escreva("Local de Destino: ")
                     leia(destcl)
                     dest[cont] <- destcl
                  fimse
            fimpara
            escreval()
            repita
                  escreva("Cadastrar Destino? [S/N]")
                  leia(sn)
                  se (maiusc(sn) <> "S") entao
                     escreval("INVALIDO!!!! Só digite 'S' ou 'N'")
                  fimse
            ate((maiusc(sn) = "S") ou (maiusc(sn) = "N"))
      ate (maiusc(sn) = "N")
      menu()
fimprocedimento    // Fim menu de destino

procedimento consulta() //Menu de consulta
inicio
      escreval("Total de", tot, " clientes cadastrados.")
      para cont <- 1 ate tot faca
             escreval("---------------")
             escreval(cont,"º Cadastro")
             escreval()
             escreval("Nome: ", nome[cont])
             escreval("CPF: ", cpf[cont])
             escreval("Endereço: ", (maiusc(end[cont])))
             escreval("Cidade: ", cidade[cont])
             escreval("Estado: ", estado[cont])
             escreval("Local de Embarque: ", emb[cont])
             escreval("Destino da Viagem: ", dest[cont])
      fimpara
      repita
            escreval()
            escreva("Digite 'S' e de 'ENTER' para voltar ao Menu Principal: ")
            leia(sn)
            se (maiusc(sn) <> "S") entao
                escreval("INVALIDO!!!! Digite 'S' para Menu Principal: ")
            fimse
      ate (maiusc(sn) = "S")
      menu()
fimprocedimento // Fim menu de consulta

procedimento cliente()   //Menu Cliente Específico
inicio
      repita
            escreval("Digite seu CPF: ")
            leia(cpfcad)
            para cont <- 1 ate tot faca
                  se (cpfcad = cpf[cont]) entao
                      escreval("---------------")
                      escreval(cont,"º Cadastro")
                      escreval()
                      escreval("Nome: ", nome[cont])
                      escreval("CPF: ", cpf[cont])
                      escreval("Endereço: ", (maiusc(end[cont])))
                      escreval("Cidade: ", cidade[cont])
                      escreval("Estado: ", estado[cont])
                      escreval("Local de Embarque: ", emb[cont])
                      escreval("Destino da Viagem: ", dest[cont])
                  fimse
            fimpara
            escreval()
            repita
                  escreva("Verificar Cadastro? [S/N]")
                  leia(sn)
                  limpatela
                  se (maiusc(sn) <> "S") entao
                     escreval("INVALIDO!!!! Só digite 'S' ou 'N'")
                  fimse
            ate((maiusc(sn) = "S") ou (maiusc(sn) = "N"))
      ate (maiusc(sn) = "N")
      menu()
fimprocedimento    // Fim menu Cliente Específico

procedimento destinoscad()
inicio
      escreval("--------------------")
      escreval("DESTINOS CADASTRADOS")
      escreval("--------------------")
      escreval()
      para cont <- 1 ate tot faca
             escreval("Embarque: ", emb[cont])
             escreval("Destino: ", dest[cont])
             escreval()
      fimpara
      repita
            escreval()
            escreva("Digite 'S' e de 'ENTER' para voltar ao Menu Principal: ")
            leia(sn)
            se (maiusc(sn) <> "S") entao
                escreval("INVALIDO!!!! Digite 'S' para Menu Principal: ")
            fimse
      ate (maiusc(sn) = "S")
      menu()
fimprocedimento

Inicio
      menu()
Fimalgoritmo