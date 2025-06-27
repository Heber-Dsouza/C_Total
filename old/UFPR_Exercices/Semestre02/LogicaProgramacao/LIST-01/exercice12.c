#include <stdio.h>
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Portuguese");
    
    double distanciaPercorrida, quantCombustivelGasto;
    int handlingErrors = 0;
    
    printf("Digite a distancia pecorrida: ");
    handlingErrors += scanf("%lf", &distanciaPercorrida);
    
    printf("Digite a quantidade do combustível gasto: ");
    handlingErrors += scanf("%lf", &quantCombustivelGasto);

    if(handlingErrors == 2){
        printf("O consumo médio é de %.2lfKm/L", (distanciaPercorrida / quantCombustivelGasto));
    } else {
        printf("\e[1;1H\e[2J");
        printf("Entrada inválida...");
    }
    return 0;
}

/*
  12. Elabore um programa que recebe a distância percorrida por um carro e a quantidade de
  combustível gasto. Imprima o consumo médio.
*/