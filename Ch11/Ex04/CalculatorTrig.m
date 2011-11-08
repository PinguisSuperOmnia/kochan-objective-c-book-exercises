#import "Calculator.h";
#import <Math.h>

@implementation Calculator (Trig)
	-(double) sin
	{
		accumulator = sin(accumulator);
		
		return accumulator;
	}
	
	-(double) cos
	{
		accumulator = cos(accumulator);
		
		return accumulator;
	}
	
	-(double) tan
	{
		accumulator = tan(accumulator);
		
		return accumulator;
	}
@end