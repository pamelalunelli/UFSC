#include<stdio.h>

void main(){
	
	//int const n = 8; //tamanho dos vetores
	int a[8], b[8]; //declaração dos vetores a e b
	
	int i, n = 8;
	
	for (i = 1; i <= n; i++)
	{
		printf ("Informe o %do elemento : ", i);
		scanf ("%d", &a[i]);
	}
	
	/*for (i = 1; i <= n; i++){
		
		b[i] = a[i]*2;
	}
	
	/*printf("\n ---------------------------- \n");
	
	for (i = 1; i <= n ; i++){
		
		printf ("%d - %d           %d \n", i, a[i], b[i]);
	}*/
}
