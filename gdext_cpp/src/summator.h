#pragma once

#include <godot_cpp/classes/ref_counted.hpp>
using namespace godot;
class Summator : public RefCounted {
	GDCLASS(Summator, RefCounted);

	int count;


protected:
	static void _bind_methods();

public:
	int add(int i);
	long long reset();
	int get_total() const;

	Summator();
};
