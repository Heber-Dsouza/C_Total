#include <stdio.h>

int calcMMC(int *x){
    if(x[0] != 0 && x[1] != 0){
        int a = x[0], 
            b = x[1];
        while(a != b){
            if(a < b){
                a += x[0];
            } else {
                b += x[1];
            }
        }
        return a;
    } else {
        return 0;
    }
}

int main()
{
    int numbers[2], handleError = 0;
    printf("Digite o primeiro numero: ");
    handleError += scanf("%d", &numbers[0]);
    printf("Digite o segundo numero: ");
    handleError += scanf("%d", &numbers[1]);
    if(handleError == 2){
        printf("O MMC de %d e %d eh %d", numbers[0], numbers[1], calcMMC(numbers));
    } else {
        printf("\e[1;1H\e[2J");
        printf("Entrada invalida");
    }
    return 0;
}

/*
	5. Elabore um programa que lê dois números inteiros positivos A e B. Determine e imprima o
	seu MMC(mínimo múltiplo comum).
	Exemplo: A = 15 B = 20 MMC = 60
*/