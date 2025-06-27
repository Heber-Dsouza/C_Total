#include<stdio.h>

void printGrade(int x){
  if(x >= 75){
    printf("Grade S.");
  } else if(x >= 60 && x < 75){
    printf("Grade A.");
  } else if(x >= 50 && x < 60){
    printf("Grade B.");
  } else if(x >= 40 && x < 50){
    printf("Grade C.");
  } else if(x < 40){
    printf("Grade D.");
  } else {
    printf("Error...");
  }
}

int main(){
  float a;
  printf("Digite a nota: ");
  scanf("%f", &a);
  printGrade(a);
  return 0;
}

/*
  Write an algorithm to print the grade obtained by a student using the following rules.
  -----------------------
  |     Marks    | Grade |
  -----------------------
  |   Above 75   |   S   |
  |     60-75    |   A   |
  |     50-59    |   B   |
  |     40-49    |   C   |
  | Less than 40 |   D   |
  -----------------------
*/