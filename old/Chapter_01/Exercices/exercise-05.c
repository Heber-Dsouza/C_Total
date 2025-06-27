#include<stdio.h>

int main(){
    float a, b;
    printf("Digite os dois numeros: ");
    scanf("%f %f", &a, &b);
    int x = a + b;
    printf("resultado de %.2f + %.2f = %d", a, b, x);
    return 0;
}

/*
    5. Write a program to read two floating point
    numbers. Add these numbers and assign the result
    to an integer. Finally, display the value of all the
    three variables.
*/