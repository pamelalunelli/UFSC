#include<stdio.h>

float converta(float f){
    
    float c;
    
    c = (f - 32.0)* (5.0 / 9) ;
    
    return c;
}

void main(){
    
    float f;
    
    printf ("Informe os graus em Fahrenheit: ");
    scanf ("%f", &f);
    
    printf("\n %.2f graus Fahrenheit = %.2f graus Celsius", f, converta(f));
}