#include<stdio.h>
#include<stdlib.h>

int FibonacciRec(int x){
    if(x <= 1) return 1;
    return FibonacciRec(x - 1) +  FibonacciRec(x - 2);
}

int main(){
    int num;
    printf("Digite um numero: ");
    if(scanf("%d", &num) == 1 && num > 0){
        for(int i = 0; i < num; i++){
            printf("%d ", FibonacciRec(i));
        }
    } else {
        printf("Entrada invalida...");
    }
    return 0;
}

/*
	3. Elabore um programa que lê um número inteiro positivo N e imprime os N primeiros termos
	da série de Fibonacci.
*/