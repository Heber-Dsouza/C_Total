#include<stdio.h>

int calcFatorial(int x){
    if(x == 1)return 1;
    return x * calcFatorial(x - 1);
}

int main(){
    int num;
    printf("Digite o numero: ");
    if(scanf("%d", &num) == 1){
        printf("!%d = %d", num, calcFatorial(num));
    } else {
        printf("Entrada invalida...");
    }
    return 0;
}

/*
	10. Elabore um programa que lê um número inteiro positivo N. Calcule e imprima o seu
	fatorial.
*/