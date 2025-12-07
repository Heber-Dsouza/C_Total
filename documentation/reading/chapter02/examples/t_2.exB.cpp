#include <iostream>

using namespace std;

int getValueFromUser()
{
  int num{};
  cout << "Enter a integer: ";
  cin >> num;

  return num;
}

int main()
{
  int x{getValueFromUser()}, y{getValueFromUser()};
  cout << x << " + " << y << " = " << x + y << '\n';

  return 0;
}