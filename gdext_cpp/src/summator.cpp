#include "summator.h"
using namespace godot;
int Summator::add(int i) {
    int x=0;
    x=i*i;
return x;
}
long long x[100000000];
long long Summator::reset() {
	


for (size_t i = 0; i < 100000000; i++)
{
	x[i]=i*i;
}

return x[99999999];
}


void Summator::_bind_methods() {
	ClassDB::bind_method(D_METHOD("add", "value"), &Summator::add);
	ClassDB::bind_method(D_METHOD("reset"), &Summator::reset);
}

Summator::Summator() {
}
