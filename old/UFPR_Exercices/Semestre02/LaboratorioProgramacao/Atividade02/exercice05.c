#include <stdio.h>
#include <stdlib.h>

int main(){
    int n, i, *arr, *end, *ptr, maior, menor;
    printf("Digite o numero para a quantidade maxima de arrays: ");
    if(scanf("%d", &n) && n > 0){
        arr = (int*)malloc(n * sizeof(int));
    } else 
        printf("Entrada invalida...");
    
    printf("Digite os %d numeros para o array: ", n);
    for(i = 0; i < n; i++){
        scanf("%d", &arr[i]);
        // já é possível fazer as verificações aqui, porém o propósito é usar ponteiros
        // conferir próximo bloco
    }
    
    maior = arr[0], menor = arr[0];
    for(ptr = arr + 1, end = arr + n; ptr < end; ptr++){
        if(*ptr > maior)
            maior = *ptr;
        if(*ptr < menor)
            menor = *ptr;
    }
    printf("O maior número é: %d. O menor número é: %d", maior, menor);
    return 0;
}

/*
	05. Faça um programa em C que solicite ao usuário o tamanho de um array de inteiros e, em
	seguida, peça ao usuário para inserir os elementos desse array (validar caso o usuário informe
	tamanho menor ou igual a zero). Utilize ponteiros para percorrer o array e encontrar o maior e o
	menor número. Depois, exiba o maior e o menor número encontrados. Dica: Você pode usar dois
	ponteiros, um para acompanhar o maior número e outro para o menor número enquanto percorre
	o array.
*/