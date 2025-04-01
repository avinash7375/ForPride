// a = [12,13,13,12];
//
// target = 2;
#include <iostream>

using namespace std;

int main() {
	int a[6] = {0, -1, 1, 2, 3, 4};

	int target = 3;

	for (int i = 0; i<5; i++) {
		for(int j = i; j<5; j++){
			if(a[i]+a[j] == target) {
				cout << i <<"Target found\n";
			}
			else {
				cout << i << "Not found\n";
			}
		}
	}
}
