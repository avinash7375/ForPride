//linear search 

#include <iostream>

using namespace std;

int main() {
    int arr[5] = {12,31,21,11,4};
    
    int target = 11;
    
    for(int i = 0; i<5; i++){
        if(arr[i] == target){
            cout<<"found " << target << " at index " << i << endl;
        }
    }
}
