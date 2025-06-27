#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    
    int x;
    printf("Digite um número: ");
    if(scanf("%d", &x) == 1){
        printf("Representação Octal: %#o. Representação Hexadecimal: %#x", x, x);
    } else {
        printf("Entrada inválida..");
    }
	
	return 0;
}

/*
  6. Escreva um programa que lê um número inteiro e imprime sua representação octal e
  hexadecimal.
  http://www.cmaismais.com.br/referencia/cstdio/printf/
*/