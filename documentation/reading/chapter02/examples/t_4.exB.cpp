#include <iostream>

using namespace std;

int getValueFromUser()
{
  int num{};
  cout << "Enter a integer: ";
  cin >> num;

  return num;
}

void printDouble(int num)
{
  cout << "double is: " << num * 2 << '\n';
}

int main()
{
  printDouble(getValueFromUser());

  return 0;
}