#include <stdio.h>

int main()
{
    int x;
    printf("Digite o numero: ");
    if(scanf("%d", &x) && x > 0){
        for(int i = 0; i <= x; i++){
            for(int j = 0; j < i; j++){
                printf("%d", i);
            }
            printf("\n");
        }
    } else {
        printf("\e[1;1H\e[2J");
        printf("Entrada invalida");
    }
    return 0;
}

/*
	8. Escreva um programa que lê um número inteiro positivo N, e imprime N linhas no seguinte
	formato:
	N = 6
	1
	22
	333
	4444
	55555
	666666
*/