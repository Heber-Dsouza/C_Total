#include <iostream>

int main()
{

  std::cout << "Digite dois números: ";

  int x{};
  int y{};
  std::cin >> x >> y;

  std::cout << "\nOs números digitados foram: " << x << " e " << y << '\n';

  return 0;
}