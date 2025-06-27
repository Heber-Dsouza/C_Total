#include<stdio.h>

int main(){
    char vowels[] = {'A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u'},
        text[255];
    int vowelQuantity = 0;

    printf("Digite seu texto: ");
    fgets(text, sizeof(text), stdin);
    for(int i = 0; text[i] != '\0'; i++){
        for(int j = 0; j < sizeof(vowels); j++){
            if(text[i] == vowels[j]){
                vowelQuantity++;
            }
        }
    }
    printf("A quantidade de vogais eh: %d", vowelQuantity);
    return 0;
}

/*
    3. Write a program to count the number of vowels
    in a text
*/
