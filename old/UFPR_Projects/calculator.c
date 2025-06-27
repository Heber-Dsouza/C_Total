#include<stdio.h>
#include<string.h>
#include<stdlib.h>
#define INPUT_MAX_CHAR 20
#define INPUT_MAX_QUANTITY 26

// ----------------------------------------------------------------------------------------------------------
// Operation functions:

void Sum(void** nums, int typedAs){
  // if(typedAs == 0){
  //   int* arr = (int*)nums;
  //   printf("> (A + B): %d + %d = %d\n\n", arr[0], arr[1], arr[0] + arr[1]);
  // } else {
  //   double* arr = (double*)nums;
  //   printf("> (A + B): %g + %g = %g\n\n", arr[0], arr[1], arr[0] + arr[1]);
  // }

  typedAs == 0
  ? printf("> (A + B): %d + %d = %d\n\n\n", *((int*)(*nums)), *((int*)(*nums) + 1), *((int*)(*nums)) + *((int*)(*nums) + 1))
  : printf("> (A + B): %g + %g = %g\n\n\n", *((double*)(*nums)), *((double*)(*nums) + 1), *((double*)(*nums)) + *((double*)(*nums) + 1));
}

void Subtract(void** nums, int typedAs){
  typedAs == 0
  ? printf("> (A - B): %d - %d = %d\n\n\n", *((int*)(*nums)), *((int*)(*nums) + 1), *((int*)(*nums)) - *((int*)(*nums) + 1))
  : printf("> (A - B): %g - %g = %g\n\n\n", *((double*)(*nums)), *((double*)(*nums) + 1), *((double*)(*nums)) - *((double*)(*nums) + 1));
}

void Multiply(void** nums, int typedAs){
  typedAs == 0
  ? printf("> (A * B): %d * %d = %d\n\n\n", *((int*)(*nums)), *((int*)(*nums) + 1), *((int*)(*nums)) * *((int*)(*nums) + 1))
  : printf("> (A * B): %g * %g = %g\n\n\n", *((double*)(*nums)), *((double*)(*nums) + 1), *((double*)(*nums)) * *((double*)(*nums) + 1));
}

void Divide(void** nums, int typedAs){
  typedAs == 0
  ? printf("> (A / B): %d / %d = %d\n\n\n", *((int*)(*nums)), *((int*)(*nums) + 1), *((int*)(*nums)) / *((int*)(*nums) + 1))
  : printf("> (A / B): %g / %g = %g\n\n\n", *((double*)(*nums)), *((double*)(*nums) + 1), *((double*)(*nums)) / *((double*)(*nums) + 1));
}

void Exponentiation(int* nums){
  int result = 1;
  for(int i = 0; i < nums[1]; i++){
    result *= nums[0];
  }
  printf("> (A ** B): %d ** %d = %d\n\n\n", nums[0], nums[1], result);
}

int CalcFatorial(int x){
    if(x == 1)return 1;
    return x * CalcFatorial(x - 1);
}

// ----------------------------------------------------------------------------------------------------------

int anyDouble(char text[][INPUT_MAX_CHAR], int** maxLength){
  for (int i = 0; i < **maxLength; i++){
    for (int j = 0; text[i][j] != '\0'; j++){
      if (text[i][j] == '.' || text[i][j] == ','){
        return 1;
      }
    }
  }
  return 0;
}

int isValidNumber(char number[]){
  char validDigits[] = {'1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '-', '.', ','};
  int legth = strlen(validDigits), flag = 0;
  for(int i = 0; number[i] != '\0'; i++){
    for(int j = 0; j < legth; j++){
      if(number[i] == validDigits[j]){
        flag = 1;
        break;
      }
    }
    if(flag == 0){
      return 0;
    }
  }
  return 1;
}

int getInput(char numbers[][INPUT_MAX_CHAR], int*** maxLength, int*** currentState){
  int tempLength = ***currentState == 6 ? 1 : ***maxLength;
  for(int i = 0; i < tempLength; i++){
    printf("> (%c): ", i + 65);
    scanf("%s", numbers[i]);
    if(isValidNumber(numbers[i]) == 0){ 
      tempLength = i;
      ***currentState = 0;
      return 0;
    }
  }
  return 1;
}

void OperationInterface(char numbers[][INPUT_MAX_CHAR], int** maxLength, int** currentState, int** state){
  if(getInput(numbers, &maxLength, &currentState)){
    double* double_converted = malloc(**maxLength * sizeof(double));
    int* int_converted = malloc(**maxLength * sizeof(int));
    int typedAs = 0; // 0: int, 1: double
    void **gp;
    if(anyDouble(numbers, maxLength)){
      gp = (void**)&double_converted;
      typedAs = 1;
      for(int i = 0; i < **maxLength; i++){
        double_converted[i] = atof(numbers[i]);
      }
    } else {
      gp = (void**)&int_converted;
      for(int i = 0; i < **maxLength; i++){
        int_converted[i] = atoi(numbers[i]);
      }
    }
    switch(**currentState){
      case 1: 
        Sum(gp, typedAs);
        break;
      case 2: 
        Subtract(gp, typedAs);
        break;
      case 3: 
        Multiply(gp, typedAs);
        break;
      case 4: 
        Divide(gp, typedAs);
        break;
      case 5: 
        if(typedAs == 1){
          printf("> Permitido apenas numeros inteiros!\n");
        } else {
          Exponentiation(int_converted);
        }
        break;
      case 6: 
        if(typedAs == 1){
          printf("> Permitido apenas numeros inteiros!\n");
        } else {
          printf("> (!A): !%d = %d\n\n\n", int_converted[0], CalcFatorial(int_converted[0]));
        }
        break;
      default:
        break;
    }
  }
}

int SelectOption(int* state, int* maxLegth, int* currentState, int* isRunning){
  char nums[INPUT_MAX_QUANTITY][INPUT_MAX_CHAR];
  int selectedOptions = 1;
  switch(*state){
    case 1: 
      printf("\nSOMA:\n\n");
      break;
    case 2: 
      printf("\nSUBTRAIR:\n\n");
      break;
    case 3: 
      printf("\nMULTIPLICAR:\n\n");
      break;
    case 4: 
      printf("\nDIVIDIR:\n\n");
      break;
    case 5: 
      printf("\nEXPONENCIACAO:\n\n");
      break;
    case 6: 
      printf("\nFATORIAL:\n\n");
      break;
    case 9: 
      printf("\e[1;1H\e[2J");
      // *currentState = 0;
      selectedOptions = 0;
      break;
    case 0: 
      printf("Good bye!");
      *isRunning = 0;
      selectedOptions = 0;
      break;
    default:
     *currentState = 0;
      selectedOptions = 0;
      break;
  }
  if(selectedOptions)
    OperationInterface(nums, &maxLegth, &currentState, &state);
    *currentState = 0;
}

int MainMenu(int* state){
  int selected, flag = 0;
  printf("\nEscolha uma das opcoes abaixo: \n\n  [1]: SOMAR\n  [2]: SUBTRAIR\n  [3]: MULTIPLICAR\n  [4]: DIVIDIR\n  [5]: EXPONENCIACAO\n  [6]: FATORIAL\n\n  [9]: limpar tela\n  [0]: sair\n");
  printf("\nSua escolha: ");
  if(scanf("%d", &selected)){
    *state = selected;
    return 1;
  } else {
    printf("\e[1;1H\e[2J");
    while (getchar() != '\n');
    printf("Entrada invalida, tente novamente...\n");
    return 0;
  }
}

int main(){
  //printf("\e[1;1H\e[2J");
  //char screen[50] = "------------- MENU -----------";

  int currentState = 0, maxLegth = 2, isRunning = 1, isInputValid = 0;
  while(isRunning){

    if(currentState == 0){
      isInputValid = MainMenu(&currentState);
    }
    if(isInputValid){
      SelectOption(&currentState, &maxLegth, &currentState, &isRunning);
    }
    
  }
  return 0;
}