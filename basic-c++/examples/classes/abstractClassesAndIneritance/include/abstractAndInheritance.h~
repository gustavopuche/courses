// pixel.h
#include<stdio.h>
#include <iostream>

using namespace std;

namespace rgb
{
	class Pixel
	{
		int r,g,b; // Pixel components.
	public:		
		Pixel(){
			r = g = b = 0;
		}
		
		Pixel(int r, int g, int b){ // Fills pixel with rgb value.
			this->r = r;
			this->g = g;
			this->b = b;
		}
				
		const Pixel& operator+ (const Pixel p){ // Add 2 Pixels.
			r += p.r; // Add pixel components
			g += p.g;
			b += p.b;
			return *this; // and return the result.
		}

		int getR() const { return r;}
		int getG() const { return g;}
		int getB() const { return b;}
	};
}
