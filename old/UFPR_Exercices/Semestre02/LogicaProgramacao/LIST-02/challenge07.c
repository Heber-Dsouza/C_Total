#include <stdio.h>

int findGreater(int x, int y){
    return x > y ? x : y;
}
int main()
{
    int temperature;
    printf("Digite o valor da temperatura: ");
    
    if(scanf("%d", &temperature) == 1){
        if(temperature > -30 && temperature <=10){
            printf("Use roupas de inverno!");
        } else if(temperature > 10 && temperature <=20){
            printf("Use roupas de outorno!");
        }else if(temperature > 20 && temperature <=45){
            printf("Use roupas de verão!");
        } else {
            printf("Use roupas funerarias! :D");
        }
    } else {
        printf("Numeros invalidos...");
    }
    return 0;
}

/*
  7. Escreva um programa que lê um número correspondendo a temperatura prevista para o dia
  e recomenda um tipo de vestimenta. Os valores e recomendações são livres, use sua
  criatividade e opiniões
*/