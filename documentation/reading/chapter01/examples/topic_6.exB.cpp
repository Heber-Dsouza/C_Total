#include <iostream>

// Don't worry about what & is for now, we're just using it to trick the compiler into thinking variable x is used
void doNothing(int &)
{
}

int main()
{
  int x;

  doNothing(x); // make the compiler think we're assigning a value to this variable

  std::cout << x << '\n';

  return 0;
}