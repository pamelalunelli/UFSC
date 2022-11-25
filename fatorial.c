#include<stdio.h>

float fatorial (int n){
    
    int i, fat;
    
    for (i = 0; i < n; i++)
    {
        fat = fat * (n-1);
        n = n-1;
    }

    return fat;
}

void main(){
    
 int numero, fatorial;
 
 
 printf("Informe um número: \n");
 scanf("%d", &numero);
 
//fatorial = fatorial(numero);
 
printf ("O fatorial de %d = %d \n", numero, fatorial(numero));

}
 