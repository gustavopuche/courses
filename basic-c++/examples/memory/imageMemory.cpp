// imageStruct.cpp

#include<stdio.h>
#include<stdlib.h>
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
  
  Image(int rows, int cols, ImageType t)
  {
    type = t;
    nrows = rows;
    ncols = cols;
      
    pixels = new Pixel*[rows];
    for (int i=0;i<10;i++)
    {
      pixels[i] = new Pixel[cols];
    }		
  }
  
  ~Image()
  {
    cout << "Calling destructor..." << endl;
    
    delete [] pixels;
  }
};

int main()
{
  Image im{10,10,grayscale};
  
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
    
    int * copy;
    
    copy = (int*)malloc(im.nrows*im.ncols*sizeof(int));
    
    copy[5*im.ncols+4] = im.pixels[5][5].gray;
    
    cout << "Pixel[5,5] = " <<
      im.pixels[5][5].gray <<
      " and copy[5*ncols+4] = "<<
      copy[5*im.ncols+4]<<endl;
    
    // Frees memory.
    free(copy);
  }
  
  
  cout << "imageStruct is finnished." << endl;
}
