#include <stdio.h>

int main(){
    float celsius;
    printf("Digite a temperatura(C): ");
    if(scanf("%f", &celsius))
        printf("Temperatura(F): %.2f", ((celsius * 9 / 5)) + 32);
    else 
        printf("Entrada invalida...");

    return 0;
}

/*
	03. Crie um programa que converta uma temperatura de graus Celsius para Fahrenheit. O usuário
	deve inserir a temperatura em Celsius, e o programa deve exibir a temperatura equivalente em
	Fahrenheit usando a fórmula: F = (C * 9/5) + 32. A saída da tela deve possuir apenas duas casas
	decimais.
*/