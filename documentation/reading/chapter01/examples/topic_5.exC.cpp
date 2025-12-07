#include <iostream>

int main()
{

  std::cout << "Digite dois números: ";

  int x{};
  std::cin >> x;

  int y{};
  std::cin >> y;

  std::cout << "\nOs números digitados foram: " << x << " e " << y << '\n';

  return 0;
}