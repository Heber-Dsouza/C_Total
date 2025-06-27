#include<stdio.h>
#include<locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    
    double x;
    printf("Digite o valor em polegadas: ");
    if(scanf("%lf", &x) == 1){
        printf("Valor em centímetros: %.2lfcm.", (x * 2.54));
    } else {
        printf("Entrada inválida..");
    }
    
    return 0;
}

/*
  10. Escreva um programa que converte uma medida em polegadas para uma medida em
  centímetros.
*/