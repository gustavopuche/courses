#include <vector>
#include <list>
#include <random>
#include <algorithm>
#include <iterator>
#include <iostream>
#include <time.h>

using namespace std;
using std::vector;

template <typename T>
void exercise(int size, string commonname)
{
	T v;
	typedef typename T::value_type t_value;
	t_value res1("starting entry");
	v.push_back(res1);

	for (int i = 0; i < size; i++)
	{
		int r = (int) rand();
		string s;
		int ss = r % 100;
		s.reserve(ss);
		generate_n(back_inserter(s), ss, [ss](){return (char)('a' + ss/2);});
		t_value res(s);
		bool inserted = false;

		for (auto it = begin(v); it != end(v); it++)
		{
			if (*it > res)
			{
				v.insert(it, res);
				inserted = true;
				break;
			}
			
		}

		if (!inserted)
		{
			v.push_back(res);
		}
	}

	auto it = max_element(begin(v), end(v));
  auto maxV = *it;
	cout << "max element in " << commonname << ": " << maxV << endl;
	it = min_element(begin(v), end(v));
	auto minV = *it;
	cout << "min element in " << commonname << ": " << minV << endl;

	bool sorted = is_sorted(begin(v), end(v));
	cout << "the " << commonname << " is ";

	if (!sorted)
	{
		cout << " not";
	}
	
	cout << "sorted." << endl;
}

int main()
{
	const int size = 1000;

	cout << "Running vector and list of " << size << " elements" << endl;


	struct timespec ctr1;
	struct timespec ctr2; 
	
	clock_gettime(CLOCK_MONOTONIC, &ctr1);


	exercise<vector<string>>(size, "vector");

	// Final time
	clock_gettime(CLOCK_MONOTONIC, &ctr2);
	
	double time = ((double)((ctr2.tv_sec + ctr2.tv_nsec) - (ctr1.tv_sec + ctr1.tv_nsec))/1000.0);
	cout << "vector time (ms): " << time << endl;

	// Init time
	clock_gettime(CLOCK_MONOTONIC, &ctr1);


	exercise<list<string>>(size, "list");

	// Final time
	clock_gettime(CLOCK_MONOTONIC, &ctr2);
	
								 time = ((double)((ctr2.tv_sec + ctr2.tv_nsec) - (ctr1.tv_sec + ctr1.tv_nsec))/1000.0);
	cout << "list time (ms): " << time << endl;

	return 0;
}
