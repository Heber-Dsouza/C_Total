#include<stdio.h>
#include<string.h>

int main(){
    float num;
    char numChar[12];
    printf("Digite o numero: ");
    scanf("%f", &num);
    sprintf(numChar, "%f", num);
    printf("%s", numChar);
    return 0;
}