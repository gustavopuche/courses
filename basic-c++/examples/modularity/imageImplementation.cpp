// imageImplementation.cpp

#include<imageInterface.h>

using namespace std;
	
Image::Image(int rows, int cols, int g)
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

Image::~Image()
{
	cout << "Calling destructor..." << endl;
  
	delete [] pixels;
}
