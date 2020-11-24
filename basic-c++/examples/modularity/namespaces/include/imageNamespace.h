// imageNamespace.cpp

#include<stdio.h>
#include <iostream>

using namespace std;

namespace gray
{
	class Image
	{
		int nrows, ncols; // Number of rows and columns.
		int **pixels;     // Pointer to image pixels.
		
		void reserveMemory();       // Reserves memory.
		void copy (const Image& I); // Copy I image over current image.
		void freeMemory();          // Frees memory.
		
	public:
		Image();
		Image(int n, int m, int g); // Fills pixels n x m with g value
		Image(const Image& I);      // Copy Constructor
		~Image();                   // Destructor
		
		const Image& operator= (const Image&); // Assign operator
		
		int  getNrows();  // Rows
		int  getNcols();  // Columns
		int  getGray(int x, int y) const;  // Gray pixel value (x,y).
		void setGray(int x, int y, int g); // Set pixel value (x,y).
		
		Image operator+ (const Image& I); //Add Images
		Image operator- (const Image& I); //Sub Images
		Image operator! ();   // Invierte la Image
	};
}

namespace rgb
{
	struct RGB
	{
		int r,g,b;
	};
		
	class Image
	{
		int nrows, ncols; // Number of rows and columns.
		RGB **pixels;     // Pointer to image pixels.
		
		void reserveMemory();       // Reserves memory.
		void copy (const Image& I); // Copy I image over current image.
		void freeMemory();          // Frees memory.
		
	public:
		Image();
		Image(int n, int m, int r, int g, int b); // Fills pixels n x m with rgb value
		Image(const Image& I);      // Copy Constructor
		~Image();                   // Destructor
		
		const Image& operator= (const Image&); // Assign operator
		
		int  getNrows();  // Rows
		int  getNcols();  // Columns
		int  getGray(int x, int y) const;  // Gray pixel value (x,y).
		void setGray(int x, int y, int g); // Set pixel value (x,y).
		
		Image operator+ (const Image& I); //Add Images
		Image operator- (const Image& I); //Sub Images
		Image operator! ();   // Invierte la Image
	};	
}
