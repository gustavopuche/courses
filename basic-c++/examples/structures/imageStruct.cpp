// imageStruct.cpp

#include<stdio.h>
#include <iostream>

using namespace std;

struct Image
{
	int     nrows, ncols; // Number of rows and columns.
	int**   pixels;       // Pointer to image pixels.
};

int main()
{
	cout << "imageStruct is finnished." << endl;
}
