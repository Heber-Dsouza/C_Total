#include <stdio.h>

int findGreater(int x, int y){
    return x > y ? x : y;
}
int main()
{
    char letra, vogais[] = {'A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'};
    int isVogal = 0;
    printf("Digite a letra: ");
    
    if(scanf("%c", &letra) == 1){
        for(int i = 0; i < sizeof(vogais) / sizeof(vogais[0]); i++){
            if(letra == vogais[i]){
                isVogal = 1;
                break;
            }
        }
        printf("A letra %c eh uma %s.", letra, (isVogal ? "vogal" : "consoante"));
    } else {
        printf("Entrada invalida...");
    }
    return 0;
}

/*
  8. Elabore um programa que lê um caractere e informa se ele é uma vogal ou consoante.
*/