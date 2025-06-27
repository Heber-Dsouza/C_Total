#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    
    int horas;
    double valorHora;
    int handleErrors = 0;
    
    printf("Digite a quantidade de horas trabalhadas: ");
    handleErrors += scanf("%d", &horas);
    printf("Digite o valor pago por horas trabalhadas: ");
    handleErrors += scanf("%lf", &valorHora);
    
    if(handleErrors == 2){
        printf("Valor a ser recebido: R$%.2lf", (horas * valorHora));
    } else {
        printf("\e[1;1H\e[2J");
        printf("Entrada inválida..");
    }
    
    return 0;
}

/*
  11. Escreva um programa que recebe um número de horas trabalhadas de um advogado e o
  valor de uma hora de seu serviço. Imprima o valor a ser pago.
*/