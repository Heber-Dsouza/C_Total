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
  int num{getValueFromUser()};
  cout << "double is: " << num * 2 << '\n';

  return 0;
}