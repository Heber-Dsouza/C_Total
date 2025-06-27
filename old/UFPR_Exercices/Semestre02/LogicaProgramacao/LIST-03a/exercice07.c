#include<stdio.h>
#include <math.h>

int SumOfPowerThree(int x){
    if(x == 1) return 1;
    return pow(x, 3) + SumOfPowerThree(x - 1);
}

int main(){
    int num;
    printf("Digite um numero: ");
    if(scanf("%d", &num) == 1){
        printf("A soma do cubo de todos os numeros ate %d = %d", num, SumOfPowerThree(num));
    } else {
        printf("Entrada invalida...");
    }
    return 0;
}

/*
	7. Escreva um programa que lê um número inteiro positivo N e imprime a soma do cubo de
	todos os números naturais até N.
	Exemplo: N = 5
	225 (1 + 8 + 27 + 64 + 125)
*/