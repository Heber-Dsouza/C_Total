#include <stdio.h>
#include <math.h>

int main(){
    float altura, peso, IMC;
    int errorHandle;

    printf("Digite o valor de sua altura(m): ");
    errorHandle += scanf("%f", &altura);
    printf("Digite o valor de seu peso(kg): ");
    errorHandle += scanf("%f", &peso);
    if(errorHandle == 2){
        IMC = peso / (altura * altura);
        if(IMC <= 18.5){
            printf("Baixo peso");
        } else if(IMC > 18.5 && IMC < 25){
            printf("Peso normal");
        } else if(IMC >= 25 && IMC < 30){
            printf("Sobrepeso");
        } else if(IMC >= 30 && IMC < 35){
            printf("Obesidade grau I");
        } else if(IMC >= 35 && IMC < 40){
            printf("Obesidade grau II");
        } else if(IMC >= 40){
            printf("Obesidade grau III");
        } else {
            printf("ERRO...");
        }
    } else {
        printf("Entrada inválida...");
    }
  
  
    return 0;
}

/*
	1. Elabore um programa que calcula o IMC de uma pessoa com base em seu peso e altura, e
	retorna sua classificação com base na seguinte tabela:
	Abaixo de 18,5 - Baixo peso
	Entre 18,6 e 24,9 - Peso normal
	Entre 25 e 25,9 - Sobrepeso
	Entre 30 e 34,9 - Obesidade grau I
	Entre 35 e 39,9 - Obesidade grau II
	Acima de 40 - Obesidade grau III
*/