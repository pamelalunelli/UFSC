entrada = int(input("Adicione um número: "))

lista = []

lista.append(entrada)

while entrada >=0:
    entrada = int(input("Adicione um número: "))
    if entrada >=0:
        lista.append(entrada)
        print (lista)

for i in range (0, len(lista)):
    elemento = lista[i]
    print (i, elemento)

pO = int(input("Entre com a posição original do número que deseja alterar: ")) #posição de origem
pD = int(input("Entre com a posição de destino do número que deseja alterar: ")) #posição de destino

if pO >= 0 and pD <= len(lista):

    item = lista[pO]

    for i in range (pO, pD):
        lista[i] = lista[i+1]

    lista[pD] = item

    for i in range (0, len(lista)):
        elemento = lista[i]
        print (i, elemento)

