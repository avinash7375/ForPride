#include <iostream>


class a {
private:
	int b;
	int c;
public:
	int hello(int d, int e){
		return d+e;
	};
	
	int hello1(){
		return 0;
	};
	
	int some(int i){
		return i;
	};
};

class b : a {
public:
	int hello(int a){
		return a;
	};
};

int main(void) {
	a a1;
	b b1;
	std::cout << a1.hello(12, 13) << "\n";
	std::cout << a1.hello1() << "\n";
	std::cout << a1.some(12) << "\n";
	std::cout << b1.hello(133) << "\n";
}