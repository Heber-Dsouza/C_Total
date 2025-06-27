#include <stdio.h>
#define MAX 10

int main(){
    float nums[MAX], sum = 0.0;
    int i, count;
    printf("Digite as dez notas: ");
    for(i = 0; i < MAX; i++){
        if(scanf("%f", &nums[i]) && nums[i] >= 0.0){
            sum += nums[i];
            count++;
        }
        else
            break;
    }
    printf("Quantidade de notas digitadas: %d\n", count);
    printf("notas digitadas: ");
    for(i = 0; i < count; i++){
        printf("%.2f ", nums[i]);
    }
    printf("\nmedia: %.2f", sum / count);
    return 0;
}

/*
	02. Escreva um programa em C, que solicite 10 valores do tipo float. Após isso, o programador
	deve realizar o cálculo da média aritmética dos valores informados. Deve ser mostrado na tela
	todos os valores inseridos, a quantidade de valores que foram inseridos, e o cálculo da média
	final. Não permitir a inserção de valores menores que zero.
*/
