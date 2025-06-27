#include <stdio.h>

int main(){

	struct Notas {
		int bill, number;
	} x[] = {{100, 0}, {50, 0},	{20, 0}, {10, 0}, {5, 0}, {2, 0}, {1, 0}};

	int money, i,
		arrayLength = sizeof(x) / sizeof(x[0]);

  scanf("%d", &money);
  printf("%d\n", money);

  for(i = 0; i < arrayLength; i++){
    x[i].number = money / x[i].bill;
    if(money == x[i].bill)
      x[i].number = 1;
    money %= x[i].bill;
  }

	for(i = 0; i < arrayLength; i++)
		printf("%d nota(s) de R$ %d,00\n", x[i].number, x[i].bill);

	return 0;
}

/*
  In this problem you have to read an integer value and calculate the smallest possible number of banknotes in which the value may be decomposed.
  The possible banknotes are 100, 50, 20, 10, 5, 2 and 1. Print the read value and the list of banknotes.

  Input:
  The input file contains an integer value N (0 < N < 1000000).

  Output:
  Print the read number and the minimum quantity of each necessary banknotes in Portuguese language, as the given example. 
  Do not forget to print the end of line after each line, otherwise you will receive “Presentation Error”.
*/