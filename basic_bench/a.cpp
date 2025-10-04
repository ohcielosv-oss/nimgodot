#include <iostream>

long long arr[100000000];
long long x(){
    for (size_t i = 0; i < 100000000; i++) {
      arr[i]=i*i;
    }
    return arr[99999999];
  }
int main (int argc, char *argv[]) {

 std::cout<<x(); 
  return 0;
}
