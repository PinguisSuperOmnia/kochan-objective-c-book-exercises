#import "GraphicObject.h"

@implementation GraphicObject

-(void) setFillColor: (int) fc
{
	fillColor = fc;
}

-(void) setFilled: (BOOL) f
{
	filled = f;
}

-(void) setLineColor: (int) lc
{
	lineColor = lc;
}

-(int) fillColor
{
	return fillColor;
}

-(BOOL) filled
{
	return filled;
}

-(int) lineColor
{
	return lineColor;
}

@end
