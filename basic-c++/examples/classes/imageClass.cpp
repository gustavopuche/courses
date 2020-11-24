// imageClass.cpp

#include<stdio.h>
#include <iostream>

using namespace std;

class Image
{
	int nrows, ncols; // Number of rows and columns.
  int **pixels;     // Pointer to image pixels.

  void reserveMemory();       // Reserves memory.
  void copy (const Image& I); // Copy I image over current image.
  void freeMemory();          // Frees memory.

 public:
  Image(){}
  Image(int n, int m, int g){} // Fills pixels n x m with g value
  Image(const Image& I){}      // Copy Constructor
  ~Image(){}                   // Destructor

  const Image& operator= (const Image&); // Assign operator

  int  getNrows();  // Rows
  int  getNcols();  // Columns
  int  getGray(int x, int y) const;  // Gray pixel value (x,y).
  void setGray(int x, int y, int g); // Set pixel value (x,y).

	Image operator+ (const Image& I); //Add Images
  Image operator- (const Image& I); //Sub Images
  Image operator! ();   // Invierte la Image
};

int main()
{

	Image im;

	// im.nrows = 8; // Error nrows is private.

	// cout << "Number of image rows " << im.nrows << endl;
	
	cout << "imageClass is finnished." << endl;
}
