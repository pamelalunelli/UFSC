#include <stdio.h>

void main()
{
    int numero;
    
    printf ("\n Informe um numero para a tabuada: \n");
    scanf ("%d", &numero);
    
    printf("\n O número informado foi: %d", numero);
    
    tabuada(numero);

}
void tabuada(int a){
 
    int i;
    
    
    for (i = 1; i<= 10; i++){
        printf("%d * %d = %d \n", i, a, (i*a));
        
    }
}