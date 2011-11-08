#import "Fraction.h"


@implementation Fraction

//@synthesize numerator, denominator;

-(void) print: (BOOL) reduceAfter
{
	Fraction *result = [[Fraction alloc] init];
	[result setTo: numerator over: denominator];
	

	
	int p_whole;
	Fraction *p_part = [[Fraction alloc] init];
	p_whole = [result numerator] / [result denominator];
	[p_part setNumerator: [result numerator] - (p_whole * [result denominator])];
	[p_part setDenominator: [result denominator]];
	
	if (reduceAfter)
		[p_part reduce];
	
	
	if (p_whole == 0) {
		NSLog (@"%i/%i", [p_part numerator], [p_part denominator]);
	} else {
		NSLog (@"%i %i/%i", p_whole, [p_part numerator], [p_part denominator]);
	}
	
	[result release];
}

-(void) setNumerator: (int) n
{
	numerator = n;
}

-(void) setDenominator: (int) d
{
	denominator = d;
}

-(int) numerator
{
	return numerator;
}

-(int) denominator
{
	return denominator;
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

- (void) reduce
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

- (Fraction *) add: (Fraction *) f
{
	// To add two fractions:
	// a/b + c/d = ((a*d) + (b*c)) / (b * d)
	// result will store the result of the addition
	
	Fraction *result = [[Fraction alloc] init];
	int resultNum, resultDenom;
	
	resultNum = numerator * [f denominator] +
	denominator * [f numerator];
	resultDenom = denominator * [f denominator];
	[result setTo: resultNum over: resultDenom];
	[result reduce];
	
	return result;
}

// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resultNum, resultDenom;
	
	resultNum = numerator * [f denominator] - denominator * [f numerator];
	resultDenom = denominator * [f denominator];
	[result setTo: resultNum over: resultDenom];
	[result reduce];
	
	return result;
}

// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resultNum, resultDenom;
	
	resultNum = numerator * [f numerator];
	resultDenom = denominator * [f denominator];
	[result setTo: resultNum over: resultDenom];
	[result reduce];
	
	return result;
}

// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	int resultNum, resultDenom;
	
	resultNum = numerator * [f denominator];
	resultDenom = denominator * [f numerator];
	[result setTo: resultNum over: resultDenom];
	[result reduce];
	
	return result;
}

@end
