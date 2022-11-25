
#include <stdio.h>
#include <stdlib.h>
typedef struct {
    int dia, mes, ano;
} DataNascimento;

typedef struct {
    DataNascimento data;
    int idade;
    char sexo;
    char nome[100];
} Pessoa;


void imprimir(Pessoa p){

    printf("\n Nome: %s ", p.nome);
    printf("\n Idade: %d ", p.idade);
    printf("\n Sexo: %c ", p.sexo);
    printf("\n Data de Nascimento: %d/%d/%d ", p.data.dia, p.data.mes, p.data.ano);

}

Pessoa lerPessoa(){

    Pessoa cliente;

    printf("\n Digite o nome: ");
    fgets(cliente.nome, 100, stdin);
    printf("\n Digite o sexo: ");
    scanf ("%c", &cliente.sexo);
    printf("\n Digite a idade: ");
    scanf ("%d", &cliente.idade);


    printf ("Digite sua data de nascimento dd mm aaaa: \n");
    scanf("%d%d%d", &cliente.data.dia, &cliente.data.mes, &cliente.data.ano);

    return cliente;
}


int main (){


    //Instanciando Pessoa
    Pessoa cliente;

    /*printf("\n Struct: %x \n", &cliente);
    printf("\n Nome: %x \n", &cliente.nome);
    printf("\n Idade: %x \n", &cliente.idade);
    printf("\n Sexo: %x \n", &cliente.sexo);*/
    cliente = lerPessoa();

    imprimir(cliente);


    //printf("\n Data de nascimento: %d/%d/%d", cliente.data.dia, cliente.data.mes, cliente.data.ano);


    //scanf("Entre com a idade , sexo e nome: \n", &cliente.idade, &cliente.sexo, &cliente.nome);


    //cliente.idade = 85;
    //cliente.sexo = 'M';
    //strcpy(cliente.nome, 'Joao Silva');

    //printf("A pessoa tem idade %d, sexo %c e nome: %s \n", cliente.idade, cliente.sexo, cliente.nome);

    return 0;
}
