#Atividade Online 4 (AO4): Binário para Decimal
#Aluna: Pâmela Andressa Lunelli

#Lendo o número binário como inteiro
binario = int(input("Olá, esse é o conversor de números em formato notação binária para decimal. \nInsira um número inteiro e positivo em formato binário: \n"))

#Guardando o valor original da entrada em binário para usar no final
binarioOrig = binario

#Transformando o expoente da potência de 2 em string
#visto que a função que lê o comprimento da "palavra" exige esse passo
#Na sequência já retornado pra inteiro
expoente = int(len(str(binario))) - 1

#Em caso de entrada com o valor 0, o resultado 0 já é exibido
if binario == 0:
    print ("O número binário", binario, "em decimal é", binario)

#Inicializando variável auxiliar fora do laço
anterior = 0

#Laço para cálculo
#Enquanto o número binário (que vai sendo atualizado) for maior do que 0
while binario > 0:
        #Individualizando o dígito mais à esquerda 
        digito = binario//(10**expoente)
        #Testando se o dígito é 0 ou 1
        if digito <=1:
            #Multiplicando o dígito isolado pela potência de 2
            #equivalente à sua posição
            mult = (digito * (2**expoente))
            #Variável cumulativa para cálculo do número decimal
            soma = mult + anterior
            #Subtraindo a potencia de 10 para que reste os próximos valores
            binario = (binario - (10**expoente)*digito)
            #Decrescendo o expoente para avanço nas casas do
            #número binário
            expoente = expoente - 1
            #Guardando o valor da soma anterior para a próxima iteração
            anterior = soma
        else:    
            #Falha do teste. Dígito de entrada difente de 0 e 1
            print (digito, "não é um dígito binário")
            exit()

#Resultado utilizando a variável de entrada original
print ("O número binário", binarioOrig, "em decimal é", soma)
