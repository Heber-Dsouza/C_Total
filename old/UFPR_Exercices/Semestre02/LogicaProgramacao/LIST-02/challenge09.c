#include <stdio.h>

int isMultiple(int x, int y){
    return x % y == 0 || y % x == 0;
}

int main()
{
    int a, b, errorHandle = 0;
    printf("Digite o primeiro numero: ");
    errorHandle += scanf("%d", &a);
    printf("Digite o segundo numero: ");
    errorHandle += scanf("%d", &b);
    
    if(errorHandle == 2){
        printf("Os numeros %d e %d %s sao multiplos", a, b, (isMultiple(a, b) ? "\b" : "nao"));
    } else {
        printf("Numeros invalidos...");
    }
    return 0;
}

/*
  9. Escreva um programa que lê dois números. Imprima se um é múltiplo do outro.
*/