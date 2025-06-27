#include <stdio.h>

int SumOfDividers(int x){
    int sum = 0;
    for(int i = 1; i <= (x / 2); i++){
        if(x % i == 0){
            sum += i;
        }
    }
    return sum;
}

int main()
{
    int a;
    printf("Digite o primeiro numero: ");
    if(scanf("%d", &a) && a >= 0){
        printf("%d %s eh um numero perfeito.", a, (SumOfDividers(a) == a ? "\b" : "nao"));
    } else {
		printf("\e[1;1H\e[2J");
        printf("Entrada invalida...");
    }
    return 0;
}

/*
	1. Elabore um programa que lê um número inteiro positivo N e imprime se ele é um número
	perfeito ou não. Um número perfeito é um número cuja soma de todos os seus divisores
	naturais são iguais ao próprio número.
	Exemplo: 28 é um número perfeito pois 28 = 1 + 2 + 4 + 7 + 14.
*/