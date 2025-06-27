#include<stdio.h>
#include<string.h>

int main(){

    int number[10],
        handleError = 0,
        i, j = 1;
    char response[255] = "Os numeros sao:\n", 
        buf[10];

    for(i = 0; i < 10; i++){
        printf("Digite o numero %d: ", i);
        handleError += scanf("%d", &number[i]);
    }

    if(handleError == 10){
        for(i = 0; i < 10; i++){
            snprintf(buf, 10, "%d,", number[i]);
            strcat(response, buf);
            if(j == 3){
                strcat(response, "\n");
                j = 0;
            }
            j++;
        }
    } else {
        printf("Entradas invalidas...");
    }

    printf("%s", response);
    return 0;
}

/* 
    1. Write a program to read 10 integers. Display these
    numbers by printing three numbers in a line
    separated by commas.
 */