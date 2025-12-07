#include <iostream>

int main()
{
  int number{};
  std::cout << "Enter a integer: ";

  std::cin >> number;

  std::cout << "Double that number is: " << number * 2 << '\n';

  return 0;
}