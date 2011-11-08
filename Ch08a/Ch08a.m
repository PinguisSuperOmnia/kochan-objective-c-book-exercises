#import "Rectangle.h"

int main(int argc, char **argv) {
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Rectangle *rectA = [[Rectangle alloc] init];
	Rectangle *rectB = [[Rectangle alloc] init];
	Rectangle *rectC;
	XYPoint *pointA = [[XYPoint alloc] init];
	XYPoint *pointB = [[XYPoint alloc] init];
	
	[pointA setX: 200 andY: 420];
	[rectA setOrigin: pointA];
	[rectA setWidth: 250 andHeight: 75];
	
	[pointB setX: 400 andY: 300];
	[rectB setOrigin: pointB];
	[rectB setWidth: 100 andHeight: 180];
	
	rectC = [rectA intersect: rectB];
	
	NSLog (@"Rectangle w = %i, h = %i",
		   [rectC width], [rectC height]);
	NSLog (@"Origin at (%i, %i)",
		   [[rectC origin] x], [[rectC origin] y]);
	NSLog (@"Area = %i, Perimeter = %i",
		   [rectC area], [rectC perimeter]);
	
	[pointA release];
	[pointB release];
	[rectA release];
	[rectB release];
	[[rectC origin] release]; 
	[rectC release];
	
	Rectangle *rectD = [[Rectangle alloc] init];
	XYPoint *pointD = [[XYPoint alloc] init];
	
	[pointD setX: 0 andY: 0];
	[rectD setOrigin: pointD];
	[rectD setWidth: 5 andHeight: 5];
	[rectD draw];
	
	
	[pointD release];
	[rectD release];
	
	
	//[rectA test];
	 
	[pool drain];
	return 0;
}
