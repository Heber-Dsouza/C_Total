#include<stdio.h>

int main(){
    char text[255];
    printf("Digite seu texto: ");
    fgets(text, sizeof(text), stdin);
    for(int i = 0; text[i] != '\0'; i++){
        if(text[i] == ' '){
            text[i] = '\n';
        }
    }
    printf("O novo texto eh:\n%s", text);
    return 0;
}

/*
    4. Write a program to read the address of a user. Dis-
    play the result by breaking it in multiple lines.
*/