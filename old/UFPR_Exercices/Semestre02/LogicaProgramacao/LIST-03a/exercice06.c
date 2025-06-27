#include<stdio.h>

int SumOfNumbers(int x){
    if(x == 1) return 1;
    return x + SumOfNumbers(x - 1);
}

int main(){
    int num;
    printf("Digite um numero: ");
    if(scanf("%d", &num) == 1){
        printf("A soma de todos os numeros ate %d = %d", num, SumOfNumbers(num));
    } else {
        printf("Entrada invalida...");
    }
    return 0;
}

/*
	6. Escreva um programa que lê um número inteiro positivo N e imprime a soma dos primeiros
	N números naturais.
	Exemplo: N = 5
	1 2 3 4 5
*/