#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    
    double precoProduto;
    int quantidadeProduto, handlingErrors = 0;
    
    printf("Digite o preço do produto: ");
    handlingErrors += scanf("%lf", &precoProduto);
    
    printf("Digite a quantidade do produto: ");
    handlingErrors += scanf("%d", &quantidadeProduto);

    if(handlingErrors == 2){
        printf("O valor total da compra é de R$%.2lf", (precoProduto * quantidadeProduto));
    } else {
        printf("\e[1;1H\e[2J");
        printf("Entrada inválida...");
    }
    return 0;
}

/*
  14. Escreva um programa que lê o preço de um produto e a quantidade a ser vendida. Imprima
  o valor total da compra.
*/