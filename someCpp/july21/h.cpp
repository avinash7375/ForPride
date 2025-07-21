#include <bits/stdc++.h>
using namespace std;

template <typename x>
struct he {
	x a;
	x b;
};

int main(){
	he<int> h;
	h.a = 20;
	cout << h.a << endl;
	he<string> h1;
	h1.b = "Hello";
	cout << h1.b << endl;
	return 0;
}