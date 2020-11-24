#include<chrono>

using std::chrono::system_clock;
using std::chrono::steady_clock;
using std::chrono::duration_cast;
using std::chrono::seconds;
using std::chrono::milliseconds;

#include <iostream>
#include <vector>
#include <list>

using std::vector;
using std::list;

//#include "ListAndVector.h"

using namespace std;

template <typename Func>
long long TimeFunc(Func f)
{
	auto begin = steady_clock::now();
	f();
	auto end = steady_clock::now();

	return duration_cast<milliseconds>(end - begin).count();
}

void BuildVector(const int& size, vector<int>& v)
{
	for (int i = 0; i < size; i++)
	{
		int r = (int)rand();
		bool inserted = false;
		for (auto it = begin(v); it != end(v); it++)
			{
			if (*it > r)
			{
				v.insert(it, r);
				inserted = true;
				break;
			}
		}
		if (!inserted)
			v.push_back(r);
	}
}

void BuildList(const int& size, list<int>& l)
{
	//list
	for (int i = 0; i < size; i++)
	{
		int r = (int)rand();
		bool inserted = false;
		for (auto it = begin(l); it != end(l); it++)
		{
			if (*it > r)
			{
				l.insert(it, r);
				inserted = true;
				break;
			}
		}
		if (!inserted)
			l.push_back(r);
	}	
}
	
int main()
{
	int const size = 10'000;

	vector<int> v;
	v.push_back(0);

	list<int> l;
	l.push_back(0);

	auto vectormilliseconds = TimeFunc([&](){ BuildVector(size,v); });
	auto listmilliseconds = TimeFunc([&](){ BuildList(size,l); });

	cout << "Vector time = " << vectormilliseconds << endl;
	
	cout << "List time = " << listmilliseconds << endl;
	
	return 0;
}
