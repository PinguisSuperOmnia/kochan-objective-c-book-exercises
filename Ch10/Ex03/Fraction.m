#import "Fraction.h"

static int numAdds = 0;

@implementation Fraction

@synthesize numerator, denominator;


-(void) print
{
	NSLog (@"%i/%i", numerator, denominator);
}

-(int) numAdds
{
	return numAdds;
}

-(double) convertToNum
{
	if (denominator != 0)
		return (double) numerator / denominator;
	else
		return 1.0;
}

-(void) setTo: (int) n over: (int) d
{
	numerator = n;
	denominator = d;
}

-(void) reduce
{
	int u = numerator;
	int v = denominator;
	int temp;
	
	while (v != 0) {
		temp = u % v;
		u = v;
		v = temp;
	}
	
	numerator /= u;
	denominator /= u;
}

-(Fraction *) add: (Fraction *) f
{
	numAdds++;
	
	// To add two fractions:
	// a/b + c/d = ((a*d) + (b*c) / (b * d)
	
	// result will store the result of the addition
	Fraction *result = [[Fraction alloc] init];
	int resultNum, resultDenom;
	
	resultNum = numerator * f.denominator + denominator * f.numerator;
	resultDenom = denominator * f.denominator;
	
	[result setTo: resultNum over: resultDenom];
	[result reduce];
	
	return result;
}

@end
