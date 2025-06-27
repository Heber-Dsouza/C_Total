#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    
    double x;
    printf("Digite um número: ");
    if(scanf("%lf", &x) == 1){
        printf("Representação Notação Científica: %#e.", x);
    } else {
        printf("Entrada inválida..");
    }
	
	return 0;
}

/*
  7. Escreva um programa que lê um ponto flutuante e imprime sua representação em notação
  científica.
  http://www.cmaismais.com.br/referencia/cstdio/printf/
*/