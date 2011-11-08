#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle

-(void) setWidth: (int) w
{
	width = w;
}

-(void) setHeight: (int) h {
	height = h;
}

-(void) setWidth: (int) w andHeight: (int) h {
	width = w;
	height = h;
}

-(int) width {
	return width;
}

-(int) height {
	return height;
}

-(int) area {
	return width * height;
}

-(int) perimeter {
	return 2 * (width + height);
}

-(void) setOrigin: (XYPoint *) pt
{
	origin = pt;
}

-(XYPoint *) origin
{
	return origin;
}

-(void) translate: (XYPoint *) vector
{
	[origin setX: [origin x] + [vector x]];
	[origin setY: [origin y] + [vector y]];
}

-(Rectangle *) intersect: (Rectangle *) rect
{
	int resultX, resultY, resultWidth, resultHeight;
	
	resultX = MAX([[rect origin] x], [origin x]);
	resultY = MAX([[rect origin] y], [origin y]);
	
	resultWidth = MIN([[rect origin] x] + [rect width], [origin x] + width) - resultX;
	resultHeight = MIN([[rect origin] y] + [rect height], [origin y] + height) - resultY;
	
	if (resultWidth <= 0 || resultHeight <= 0) {
		resultX = 0;
		resultY = 0;
		resultWidth = 0;
		resultHeight = 0;
	}
	
	Rectangle *result = [[Rectangle alloc] init];
	XYPoint *resultOrigin = [[XYPoint alloc] init];
	[resultOrigin setX: resultX andY: resultY];
	[result setOrigin: resultOrigin];
	[result setWidth: resultWidth];
	[result setHeight: resultHeight];
	
	return result;
}

-(void) draw
{
	int i, j;
	
	for (i=0; i<height+2; i++) {
		for (j=0; j<width; j++) {
			if (i == 0 || i == height+2 - 1) {
				printf("-");
			} else if (j == 0 || j == width - 1) {
				printf("|");
			} else {
				printf(" ");
			}
		}
		printf("\n");
	}
}

@end


