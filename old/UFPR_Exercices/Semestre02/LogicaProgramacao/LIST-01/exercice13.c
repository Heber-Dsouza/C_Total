#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    
    double a, b, c, d;
    
    printf("Digite os valores de A, B, C e D ([a b c d] única linha): ");

    if(scanf("%lf %lf %lf %lf", &a, &b, &c, &d) == 4){
        printf("O resultado é: %lf", ((a * b) - (c * d)));
    } else {
        printf("\e[1;1H\e[2J");
        printf("Entrada inválida...");
    }
    return 0;
}

/*
  13. Escreva um programa que lê quatro números A, B, C e D. Calcule e impriva a diferença do
  produto de A e B pelo produto de C e D.
*/