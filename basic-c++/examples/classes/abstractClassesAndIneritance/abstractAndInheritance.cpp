// abstractAndIneritance.cpp

#include <abstractAndInheritance.h>

using namespace std;

img::rgb::Image::Image(int rows, int cols, int r, int g, int b)
{
	this->rows = rows;
	this->cols = cols;
	
	pixels = new Pixel*[rows];
	for (int i = 0; i < rows; i++)
	{
		pixels[i] = new Pixel[cols];

		for (int j = 0; j < cols; j++)
		{
			pixels[i][j].set(r,g,b);
		}
	}
}

img::rgb::Image::~Image()
{
	cout << "Calling destructor RGB image..." << endl;
  
	delete [] pixels;
}

img::AbstractPixel& img::rgb::Image::getPixel(int x, int y)
{
	return pixels[x][y];
}

void img::rgb::Image::setPixel(int x, int y,const img::AbstractPixel& pixel)
{
	Pixel *p = (Pixel*)&pixel;
	pixels[x][y].set(p->getR(),p->getG(),p->getB());
}

void img::rgb::Image::filter(const img::AbstractImage& image)
{
	cout << "Filter image for another image!" << endl;
}
