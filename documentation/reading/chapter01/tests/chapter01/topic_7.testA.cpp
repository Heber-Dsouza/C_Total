#include <iostream>

int main()
{

  std::cout << "C++ version: " << __cplusplus << '\n';

  if (__cplusplus == 201703L)
  {
    std::cout << "C++17" << std::endl;
  }
  else if (__cplusplus == 201402L)
  {
    std::cout << "C++14" << std::endl;
  }
  else if (__cplusplus == 201103L)
  {
    std::cout << "C++11" << std::endl;
  }
  else if (__cplusplus == 199711L)
  {
    std::cout << "C++98/03" << std::endl;
  }
  else if (__cplusplus > 201703L)
  {
    std::cout << "C++20 or later (experimental)" << std::endl;
  }
  else
  {
    std::cout << "Unknown C++ standard" << std::endl;
  }

  return 0;
}