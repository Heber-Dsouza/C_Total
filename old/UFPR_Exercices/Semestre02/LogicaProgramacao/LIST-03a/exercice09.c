#include<stdio.h>
#include<string.h>
#include<stdlib.h>

char* ReversedString(char *x){
    char *stringCopy = malloc(strlen(x) + 1);
    for(int i = strlen(x) - 1, j = 0; i >= 0; i--, j++){
      stringCopy[j] = x[i];
    }
    stringCopy[strlen(x)] = '\0';
    return stringCopy;
}

int main(){
  int num;
  printf("Digite o numero: ");
  if(scanf("%d", &num) == 1){
    char *buffer = malloc(num + 1);
    sprintf(buffer, "%d", num);
    printf("%s -> %s eh PALINDROMO!", buffer, (strcmp(buffer, ReversedString(buffer)) == 0 ? "\b" : "nao"));
  } else {
    printf("Entrada invalida...");
  }
  return 0;
}

/*
	9. Elabore um programa que lê um número inteiro positivo N e determine se ele é um número
	palíndromo, ou em outras palavras, um número cujo reverso é ele próprio.
	Exemplos:
	12022021 -> É PALÍNDROMO
	98 -> NÃO É PALÍNDROMO
	99 -> É PALÍNDROMO
	2012 -> NÃO É PALÍNDROMO
*/