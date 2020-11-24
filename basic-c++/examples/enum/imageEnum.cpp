// imageStruct.cpp

#include<stdio.h>
#include <iostream>

using namespace std;

enum ImageType {grayscale, color};

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
	ImageType type;
	int       nrows, ncols; // Number of rows and columns.
	Pixel**   pixels;       // Pointer to image pixels.
	
	Image(ImageType t)
	{
		type = t;
		
		pixels = new Pixel*[10];
		for (int i=0;i<10;i++)
		{
			pixels[i] = new Pixel[10];
		}		
	}	
};
 
int main()
{
	Image im{color};

	if (im.type == color)
	{
		im.pixels[5][5].p.r = 180;
		im.pixels[5][5].p.g = 50;
		im.pixels[5][5].p.b = 190;

		cout << "Pixel(5,5) = " <<
			im.pixels[5][5].p.r << " , " <<
			im.pixels[5][5].p.g << " , " <<
			im.pixels[5][5].p.b << endl;

	}
	else
	{
		im.pixels[5][5].gray = 250;

		cout << "Pixel(5,5) = " <<
			im.pixels[5][5].gray << endl;		
	}

	cout << "imageStruct is finnished." << endl;
}
