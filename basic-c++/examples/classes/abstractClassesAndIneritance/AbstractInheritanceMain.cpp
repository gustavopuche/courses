// AbstractIneritanceMain.cpp

#include <abstractAndInheritance.h>

using namespace std;
using namespace img::rgb;

int main()
{
	Pixel p0;
  Pixel p1{10,10,200};
  Pixel p2{40,50,20};

	p0 = p1 + p2;

	cout << "p0 = ["
			 << p0.getR()<< " , "
			 << p0.getG()<< " , "
			 << p0.getB()
			 << "]" << endl;
	
	cout << "p1 = ["
			 << p1.getR()<< " , "
			 << p1.getG()<< " , "
			 << p1.getB()
			 << "]" << endl;
	
	cout << "p2 = ["
			 << p2.getR()<< " , "
			 << p2.getG()<< " , "
			 << p2.getB()
			 << "]" << endl;
	
	Image im0{10,10,0,0,0};
	Image im1{10,10,0,0,0};
		
	im0.setPixel(0,0,p0);
	im0.setPixel(0,1,p1);
	im0.setPixel(0,2,p2);
	
	Pixel *pixel = (Pixel*)&im0.getPixel(0,0);
	
	cout << "pixel(0,0) = ["
			 << pixel->getR()<< " , "
			 << pixel->getG()<< " , "
			 << pixel->getB()
			 << "]" << endl;

	pixel = (Pixel*)&im0.getPixel(0,1);
	
	cout << "pixel(0,1) = ["
			 << pixel->getR()<< " , "
			 << pixel->getG()<< " , "
			 << pixel->getB()
			 << "]" << endl;
	
	cout << "AbstractIneritanceMain is finnished." << endl;
}
