#import "XYPoint.h"

@implementation XYPoint

-(void) setX: (int) myX
{
	x = myX;
}

-(void) setY: (int) myY
{
	y = myY;
}

-(void) setX: (int) xVal andY: (int) yVal
{
	x = xVal;
	y = yVal;
}

-(int) x
{
	return x;
}

-(int) y
{
	return y;
}

@end