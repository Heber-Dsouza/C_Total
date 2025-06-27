#include<stdio.h>
#include<string.h>

int main(){
    int sum = 0;
    char response[1000] = "", buff[22];
    for(int i = 1; i <= 200; i++){
        if(i % 2 == 0){
            strcat(response, (snprintf(buff, 22, "%d,", i), buff));
            sum += i;
        }
    }
    printf("\n%s\n", response);
    printf("Soma = %d", sum);
    return 0;
}

/* 
    2. Write a program to print the count of even numbers
    between 1–200. Also print their sum.
*/

// Melhoria: retirar o vírgula após o último número