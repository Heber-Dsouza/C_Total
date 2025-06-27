#include<stdio.h>

int main(){
    struct VOWELS {
        char vowel_Upper, vowel_Lower;
        int quantity;
    } vowels[] = {
        {'A', 'a', 0},
        {'E', 'e', 0},
        {'I', 'i', 0},
        {'O', 'o', 0},
        {'U', 'u', 0},
    };
    char text[255];

    printf("Digite seu texto: ");
    fgets(text, sizeof(text), stdin);
    for(int i = 0; text[i] != '\0'; i++){
        for(int j = 0; j < sizeof(vowels); j++){
            if(text[i] == vowels[j].vowel_Lower || text[i] == vowels[j].vowel_Upper){
                vowels[j].quantity++;
            }
        }
    }
    printf("As quantidades de vogais:\n\"A\": %d\n\"E\": %d\n\"I\": %d\n\"O\": %d\n\"U\": %d\n",
        vowels[0].quantity,
        vowels[1].quantity,
        vowels[2].quantity,
        vowels[3].quantity,
        vowels[4].quantity
    );
    return 0;
}

// Melhoria: colocar um loop para o print final das quantidades