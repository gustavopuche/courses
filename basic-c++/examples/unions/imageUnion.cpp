// imageStruct.cpp

#include<stdio.h>
#include <iostream>

using namespace std;

struct RGB
{
	int r,g,b;
	
};

union Pixel
{
	RGB p;
	int gray;
};

struct Image
{
	int       nrows, ncols; // Number of rows and columns.
	Pixel**   pixels;       // Pointer to image pixels.
	
	Image()
	{
		pixels = new Pixel*[10];
		for (int i=0;i<10;i++)
		{
			pixels[i] = new Pixel[10];
		}		
	}	
};

int main()
{
	Image im;
	
	im.pixels[5][5].p.r = 180;
	im.pixels[5][5].p.g = 50;
	im.pixels[5][5].p.b = 190;

	im.pixels[5][6].gray = 250;

	// im.pixels[5][5].gray = 20; // override p.r

	cout << "Pixel(5,5) = " <<
		im.pixels[5][5].p.r << " , " <<
		im.pixels[5][5].p.g << " , " <<
		im.pixels[5][5].p.b << endl;

	cout << "Pixel(5,6) = " <<
		im.pixels[5][6].gray << endl;

	cout << "imageStruct is finnished." << endl;
}
