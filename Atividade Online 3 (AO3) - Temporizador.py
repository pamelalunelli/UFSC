#Atividade Online 3 (AO3): Temporizador
#Aluna: Pâmela Andressa Lunelli

import time

#Atribuindo valor a variarel de minuto e segundo
min = int(input("Bem-vindo ao temporizador! \n Insira a quantidade de MINUTOS a partir da qual a contagem regressiva iniciara: \n"))

#Testando a validade do valor de minutos inserido
if min not in range (0,60):
    #Informando erro na insercao dos minutos
    print ("Entre com valor de MINUTOS entre 0 e 60")
else:
    #Caso sem erros nos minutos, variavel recebe valor de segundos
    seg = int(input("Agora insira a quantidade de SEGUNDOS a partir da qual a contagem regressiva iniciara: \n"))
    #Testando a validade do valor de segundos inserido
    if seg not in range (0,60):
        #Informando erro na insercao dos minutos
        print ("Entre com valor de SEGUNDOS entre 0 e 60")
    #Caso sem erros nos segundos, o programa comeca a rodar
    else:
        #Rotina de contagem regressiva para o primeiro minuto
        #variando do valor de segundos de entrada ate zero
        for seg in range (seg, -1,-1):
            #time.sleep(1)
            print (min, "min", seg, "s")

        #Subtraindo 1 do primeiro minuto
        min = min - 1

        #Rotina para os contar regressivamente os minutos inteiros
        #e seus segundos, variando de 59 a 0
        while min >= 0:
            if seg >= 0:
                for seg in range (59, -1,-1):
                    #time.sleep(1)
                    print (min, "min", seg, "s")
            min = min -1

        print ("Fim da contagem regressiva")

