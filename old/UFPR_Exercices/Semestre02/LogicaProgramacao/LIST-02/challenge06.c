#include <stdio.h>

int findGreater(int x, int y){
    return x > y ? x : y;
}
int main()
{
    int a, b, errorHandle = 0;
    printf("Digite o primeiro numero: ");
    errorHandle += scanf("%d", &a);
    printf("Digite o segundo numero: ");
    errorHandle += scanf("%d", &b);
    
    if(errorHandle == 2){
        printf("O maior numero entre %d e %d eh %d", a, b, findGreater(a, b));
    } else {
        printf("Numeros invalidos...");
    }
    return 0;
}

/*
  6. Escreva um programa que lê dois números reais e imprime o maior deles.
*/