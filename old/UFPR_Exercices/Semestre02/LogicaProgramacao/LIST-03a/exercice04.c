#include <stdio.h>

int main()
{
    unsigned int num, reversedNum = 0;
    printf("Digite um numero: ");
    if(scanf("%u", &num)){
        while(num > 0){
            int digit = num % 10;
            reversedNum = reversedNum * 10 + digit;
            num /= 10;
        }
        printf("O inverso de %d eh %d", num, reversedNum);
    } else {
		printf("\e[1;1H\e[2J");
        printf("Entrada invalida...");
    }

    return 0;
}

/*
	4. Sem utilizar bibliotecas de string ou funções de texto, leia um número inteiro positivo N e
	imprima esse número ao contrário.
	Exemplos:
	12345 -> 54321
	780 -> 087
*/