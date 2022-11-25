/*
crie uma estrutura com nome FichaDeAluno e acrescente os seguintes campos: nome, disciplina, nota_prova1, nota_prova2, nota_prova3;
defina uma variavel do novo tipo criado;
faça a leitura de dados para cada uma das informações.
*/
#include <stdio.h>

typedef stuct {
	
	char nome[100];
	char disciplina[100];
	float notaProva1, notaProva2; notaProva3;
} FichaDeAluno;


int main (){

	FichaDeAluno ficha;
	
	printf("Entre com o seu nome:\n");
	fgets(ficha.nome, 100, stdin);
	printf("Entre com o nome da disciplina:\n");
	fgets(ficha.disciplina, 100, stdin);
	printf("Entre com a nota da primeira prova:\n");
	scanf("%f",&notaProva1);
	printf("Entre com a nota da segunda prova:\n");
	scanf("%f",&notaProva2);
	printf("Entre com a nota da terceira prova:\n");
	scanf("%f",&notaProva3);
	
	return 0;
}