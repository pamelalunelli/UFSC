#Atividade Online 2 (AO2): Calculadora
#Aluna: Pâmela Andressa Lunelli

from math import cos, pi, sin, sqrt, tan
import math

#Solicitando entrada do primeiro termo do cálculo
num1 = input("Olá, essa é a calculadora. \n Digite o primeiro termo da operação (para ângulos, valores em graus decimais): \n")

#Solicitando escolha da operação por parte do usuário
oper = input("Qual operação você deseja realizar? \n(+) Soma \n(-) Subtração \n(x) Multiplicação \n(/) Divisão \n(^) Exponenciação \n(media) Média aritmética \n(//) Raiz quadrada \n(cos) Cosseno \n(sen) Seno \n(tan) Tangente\n (s) Sair do programa\n Digite o símbolo correspondete à operação desejada: \n")

#Sair do programa 
if oper == "s":
    exit()

#Retornando a seleção do usuário
print ("Você selecionou a operação: \n", oper)

#Verificando se a operação selecionada é válida e prosseguindo somente quando
#a opção for elegida corretamente
while oper != "+" and oper != "-" and oper != "x" and oper != "/" and oper != "^" and oper != "media" and oper != "//" and oper != "cos"and oper != "sen" and oper != "tan":
    input ("Operação inválida, tente novamente.\n")
    
    oper = input("Qual operação você deseja realizar? \n(+) Soma \n(-) Subtração \n(x) Multiplicação \n(/) Divisão \n(^) Exponenciação \n(media) Média aritmética \n(//) Raiz quadrada \n(cos) Cosseno \n(sen) Seno \n(tan) Tangente\n (s) Sair do programa\n Digite o símbolo correspondete à operação desejada: \n")

    if oper == "s":
        exit()

#Testando se o primeiro termo é a constante 'Pi'
if num1 == "pi":
    pi = (math.pi)
    num1 = pi

#Forçando a entrada a se tornar float
num1 = float(num1)

#Verificando se a operação necessita ou não de um segundo termo
if oper != "//" and oper != "cos" and oper != "sen" and oper != "tan":
    num2 = (input("Digite o segundo termo da operação: \n"))

    #Testando se o segundo termo é a constante 'Pi'
    if num2 == "pi":
        pi = (math.pi)
        num2 = pi

    #Forçando a entrada a se tornar float
    num2 = float(num2)
    
#Realizando as operações propriamente ditas
if oper == "+":
    print ("O resultado da soma é: ", num1+num2)
elif oper == "-":
    print ("O resultado da subtração é: ", num1-num2)
elif oper == "x":
    print ("O resultado da multiplicação é: ", num1*num2)
elif oper == "/":
    print ("O resultado da divisão é: ", num1/num2)
elif oper == "^":
    print ("O resultado de", num1, "elevado a", num2, " é: ", num1**num2)
elif oper == "media":
    print ("O resultado da média artmética entre", num1, "e", num2, "é: ", (num1+num2)/2)
elif oper == "//":
    print ("O resultado da raiz quadrada de", num1, "é: ", math.sqrt(num1))
elif oper == "cos":
    print ("O cosseno do ângulo ", num1, "é: ", math.cos(math.radians(num1)))
elif oper == "sen":
    print ("O seno do ângulo ", num1, "é: ", math.sin(math.radians(num1)))
elif oper == "tan":
    print ("A tangente do ângulo ", num1, "é: ", math.tan(math.radians(num1)))
