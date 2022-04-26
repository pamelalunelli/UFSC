#Trabalho Prático 1
#Aluna: Pâmela Andressa Lunelli

selecao = int(input("\nEssa é a Mercearia Online. Selecione uma das opções do menu: \n \n 1 Produtos \n 2 Carrinho de Compras \n 3 Finalizar pedido\n \n Digite sua escolha: "))

produtos = [[ 1, "Macarrão", 5.99], [2, "Leite", 4.56], [3, "Arroz", 7.20],[4, "Banana", 4.50], [5, "Cerveja", 3.50], [6, "Café", 10.30]]

while selecao >= 1 and selecao <= 3:

    if selecao == 1:

        print ("\nOs itens disponíveis na Mercearia Online são: \n \n0 Voltar ao Menu Inicial e Limpar o Carrinho de Compras ")

        for i in range (0, len(produtos)):
            for j in range (0, 3):
                if j == 2:
                    print ("R$", produtos[i][j], end = " ")
                else:
                    print (produtos[i][j], end = " ")
            print ()
        print ("9 Para finalizar a lista\n")

               
        itemCompra = 1

        compras = []

        while itemCompra != 9 and itemCompra != 0:
            
            itemCompra = int(input("Digite o identificador do item que deseja adicionar ao Carrinho de Compras: "))

            if itemCompra == 9:
                break
            
            elif itemCompra == 0:
                compras.clear()
                break
            
            else:
                compras.append(itemCompra)    

            while itemCompra not in range (1, len(produtos)+1) and itemCompra != 9 and itemCompra != 0:

                itemCompra = int(input("ITEM INEXISTENTE. \nDigite o identificador do item que deseja adicionar ao Carrinho de Compras: "))

                if itemCompra in range (1,len(produtos)+1):
                    compras.append(itemCompra)
                elif itemCompra == 9:
                    break
                elif itemCompra == 0:
                    break

        carrinho = []
       
        for j in range (0, len(compras)):   
            for i in range (0, len(produtos)):
                if  compras[j] == produtos [i][0]:
                    carrinho.append(produtos[i][0:3])
        print ()

        if len(carrinho) != 0:
                print ("\n Itens adicionados ao seu carrinho: :D ")
##            print ("\nVocê adicionou os seguintes itens ao seu carrinho: ")
##            for i in range (0, len(carrinho)):
##                for j in range (0, 3):
##                    if j == 2:
##                        print ("R$", carrinho[i][j], end = " ")
##                    else:
##                        print (carrinho[i][j], end = " ")
##                print ()

    #print (compras)
            
    elif selecao == 2:
        print ("\nVocê tem os seguintes itens ao seu carrinho: ")
        for i in range (0, len(carrinho)):
                for j in range (0, 3):
                    if j == 2:
                        print ("R$", carrinho[i][j], end = " ")
                    else:
                        print (carrinho[i][j], end = " ")
                print ()

        soma = 0
        for i in range (0, len(carrinho)):
            soma = soma + carrinho[i][2]
        print ("\nO valor total dos produtos é de: R$ ", soma) 

                
        if 'carrinho' in globals() and 'carrinho' != None:
            selCarr = int(input("\nVocê está no Carrinho de Compras.\nEscolha uma das opções do menu: \n 0 Voltar \n 1 Lista de Produtos \n 2 Valor Total \n"))
            if selCarr == 0:
                pass
            elif selCarr == 1:
                pass   
##                print ("Você possui os seguintes itens no carrinho: ")
##                for i in range (0, len(carrinho)):
##                    for j in range (0, 3):
##                        if j == 2:
##                            print ("R$", carrinho[i][j], end = " ")
##                        else:
##                            print (carrinho[i][j], end = " ")
##                    print ()
            elif selCarr == 2:
                soma = 0    
                for i in range (0, len(carrinho)):
                    soma = soma + carrinho[i][2]
                print ("\nO valor total da compra é de: R$ ", soma) 
        else:
            print ("\nNão há itens adicionados ao seu Carrinho de compras. \n :(\n")

    elif selecao == 3:

        if 'carrinho' in globals() and 'carrinho' != None:
            print ("\nVocê acabou de comprar: \n")
            for i in range (0, len(carrinho)):
                for j in range (0, 3):
                    if j == 2:
                        print ("R$", carrinho[i][j], end = " ")
                    else:
                        print (carrinho[i][j], end = " ")
                print ()

            soma = 0    
            for i in range (0, len(carrinho)):
                soma = soma + carrinho[i][2]
            print ("\nO valor total da compra é de: R$ ", soma, " e seu carrinho foi esvaziado. \nAté a próxima! \n")
            carrinho.clear()
            del carrinho
        else:
            print ("Não há itens adicionados ao seu Carrinho de compras. \n :(\n")

        
                
    selecao = int(input("\nVocê voltou ao menu inicial. Selecione as opções do menu: \n 1 Produtos \n 2 Carrinho de Compras \n 3 Finalizar pedido\n"))

