// imageNamespace.cpp

#include<imageNamespace.h>

using namespace std;
	
gray::Image::Image(int rows, int cols, int g)
{
	nrows = rows;
	ncols = cols;
	
	pixels = new int*[rows];
	for (int i = 0; i < rows; i++)
	{
		pixels[i] = new int[cols];

		for (int j = 0; j < cols; j++)
		{
			pixels[i][j] = g;
		}
	}
}

gray::Image::~Image()
{
	cout << "Calling destructor gray image..." << endl;
  
	delete [] pixels;
}

rgb::Image::Image(int rows, int cols, int r, int g, int b)
{
	nrows = rows;
	ncols = cols;
	
	pixels = new rgb::RGB*[rows];
	for (int i = 0; i < rows; i++)
	{
		pixels[i] = new rgb::RGB[cols];

		for (int j = 0; j < cols; j++)
		{
			pixels[i][j].r = r;
			pixels[i][j].g = g;
			pixels[i][j].b = b;
		}
	}
}

rgb::Image::~Image()
{
	cout << "Calling destructor RGB image..." << endl;
  
	delete [] pixels;
}
