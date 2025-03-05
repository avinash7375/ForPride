#include <iostream>
#include <string>
#include <vector>
using namespace std;


template <typename S>
S call(vector<S> some) {
    for(int i = 0; i<6; i++){
        cout << some[i] << "\n";
    };
};



int main(void) {

    //using templates
    vector<int> some = {1,2,3,4,5,6};
    cout << call(some);
}

