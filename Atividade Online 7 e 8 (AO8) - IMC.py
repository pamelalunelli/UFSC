#Atividade Online 7 e 8 (AO7 e AO8)

def indice_imc(peso, altura):
    return peso / (altura * altura)


def faixa(imc):
    if imc <= 16.9:
        f = "Muito abaixo do peso"
    elif imc >= 17 and imc < 18.5:
        f =  "Abaixo do peso"
    elif imc >= 18.5 and imc < 25:
        f =  "Peso normal"
    elif imc >= 25 and imc < 30:
        f =  "Acima do peso"
    elif imc >= 30 and imc < 35:
        f =  "Obesidade grau I"
    elif imac >=35 and imc <= 40:
        f =  "Obesidade grau II"
    else:
        f =  "Obesidade grau III"
    return f
    
p = float(input("\nEssa é a calculadora de IMC. \n\nPara iniciar o cálculo, digite o peso em quilogramas (Exemplo: 84.9): "))
a = float(input("Agora, digite altura em metros: (Exemplo: 1.84): "))

r = indice_imc(p, a)

print("IMC: ", r)
print(faixa(r))
    
    
