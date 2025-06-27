#include <stdio.h>

int isPrime(int x){
    int flag = 1;
    for(int i = 2; i <= (x / 2); i++){
        if(x % i == 0){
            flag = 0;
            break;
        }
    }
    return flag;
}

int main()
{
    int a, b, handleError;
    printf("Digite o primeiro numero: ");
    handleError += scanf("%d", &a);
    printf("Digite o segundo numero: ");
    handleError += scanf("%d", &b);
    if(handleError == 2){
        for(; a <= b; a++){
            if(isPrime(a)){
                printf("%d ", a);
            }
        }
    } else {
		printf("\e[1;1H\e[2J");
        printf("Entrada invalida...");
    }
    return 0;
}

/*
	2. Elabore um programa que lê dois números inteiros positivos X e Y e imprime todos os
	números primos nesse intervalo.
	Exemplo:
	X = 15 Y = 50
	17 19 23 29 31 37 41 43 47
	Exemplo 2:
	X = 10 Y = 1
	2 3 5 7
*/