#include<stdio.h>

int main(){

	# define n 3
	
	int i, j, m[n][n];

//laço dentro de um laço

	for (i = 0; i<n ; i++){
		
		printf ("Informe os elementos da %dª linha: \n", (i+1));
		for (j = 0; j<n; j++){
			printf("m[%d][%d] = ", i, j);
			scanf ("%d", &m[i][j]);
		}
	printf("\n");
	}
    int contador;
    for (i = 0; i < n; i++)
    {
        for (j=0; j<n; j++)
        {
            if (m[i][j] == 0)
            {
                contador += 1;
            }
        }
    }
    
	for (i = 0; i < n ; i++){
		//printf("%d", i);
		for (j = 0; j < n; j++){
			printf("%d", m[i][j]);
		}
	
	    printf ("\n");
	}

    printf ("O valor de números iguais a O é: %d", contador);
}