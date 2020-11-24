// abstractAndIneritance.h
#include<stdio.h>
#include<iostream>

using namespace std;

namespace img
{
	class AbstractPixel
	{
	public:
		virtual void set(int value) = 0; // Pure virtual.
	};
	
	class AbstractImage
	{
	public:
		virtual AbstractPixel& getPixel(int x, int y) = 0; // Pure virtual.
		virtual void setPixel(int x, int y, const AbstractPixel& pixel) = 0; // Pure virtual.
		virtual int getRows() = 0; // Pure virtual.
		virtual int getCols() = 0; // Pure virtual.
	};

	class AbstractImageOperations
	{
	public:
		virtual void filter(const AbstractImage& image) = 0;// Pure virtual.
	};

	namespace grayscale
	{
		class Pixel : public AbstractPixel
		{
			int g;
		public:
			void set(int value) override{ // Implement AbstractPixel interface.
				g = value;
			}
		};
	} // End namespace grayscale.

	namespace rgb
	{
		class Pixel : public AbstractPixel
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

			void set(int value) override{ // Implement AbstractPixel interface.
				r = g = b = value;
			}

			void set(int r, int g, int b){
				this->r = r;
				this->g = g;
				this->b = b;
			}
			
			Pixel operator+(const Pixel& p){ // Add 2 Pixels.
				Pixel res;
				res.r = r + p.r; // Add pixel components
				res.g = g + p.g;
				res.b = b + p.b;
				return res; // and return the result.
			}

			int getR() const { return r;}
			int getG() const { return g;}
			int getB() const { return b;}
		};

		class Image : public AbstractImage, public AbstractImageOperations
		{
			int rows, cols;
			Pixel **pixels;
		public:
			Image();
			Image(int n, int m, int r, int g, int b); // Fills pixels n x m with rgb value
			Image(const Image& I);      // Copy Constructor
			~Image();                   // Destructor
			
			const Image& operator= (const Image&); // Assign operator
			
			int  getNrows();  // Rows
			int  getNcols();  // Columns

			Image operator+ (const Image& I); //Add Images
			Image operator- (const Image& I); //Sub Images
			Image operator! ();   // Invierte la Image

			// AbstractImage methods.
			AbstractPixel& getPixel(int x, int y) override;
			void setPixel(int x, int y, const AbstractPixel& pixel) override;
			int getRows() override{
				return rows;
			}
			int getCols() override{
				return cols;
			}

			// AbstractImageOperations methods
		  void filter(const AbstractImage& image) override;
		};
	} // End namespace rgb.
}
