#include <iostream>
#include <cstring>
using namespace std;

int main() {
  int a[5];
//without <cstring>
  cout << sizeof(a)/sizeof(a[0]) << endl;
//With <cstring>
  string b = "Hello";
  cout << b.size() << endl;

}
