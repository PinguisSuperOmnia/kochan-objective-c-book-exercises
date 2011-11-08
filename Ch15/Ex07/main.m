#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end

@implementation Fraction (MathOps)
-(Fraction *) add: (Fraction *) f
{
	// To add two fractions:
	// a/b + c/d = ((a*d) + (b*c) / (b * d)
	
	Fraction *result = [[Fraction alloc] init];
	int resultNum, resultDenom;
	
	resultNum = (numerator * f.denominator) + (denominator * f.numerator);
	resultDenom = denominator * f.denominator;
	
	[result setTo: resultNum over: resultDenom];
	[result reduce];
	
	return result;
}

-(Fraction *) sub: (Fraction *) f
{
	// To sub two fractions:
	// a/b - c/d = ((a*d) - (b*c)) / (b * d)
	
	Fraction *result = [[Fraction alloc] init];
	int resultNum, resultDenom;
	
	resultNum = (numerator * f.denominator) - (denominator * f.numerator);
	resultDenom = denominator * f.denominator;
	
	[result setTo: resultNum over: resultDenom];
	[result reduce];
	
	return result;
}

-(Fraction *) mul: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	
	[result setTo: numerator * f.numerator over: denominator * f.denominator];
	[result reduce];
	
	return result;
}

-(Fraction *) div: (Fraction *) f
{
	Fraction *result = [[Fraction alloc] init];
	
	[result setTo: numerator * f.denominator over: denominator * f.numerator];
	[result reduce];
	
	return result;
}

@end


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Fraction *a = [[Fraction alloc] init];
	Fraction *b = [[Fraction alloc] init];
	Fraction *result = [[Fraction alloc] init];
	
	[a setTo: 1 over: 3];
	[b setTo: 2 over: 5];
	
	NSArray *fractions = [NSArray arrayWithObjects: a, b, nil];
	
	
	[result setTo: 0 over: 1];
	Fraction *oldResult = result;
	for (Fraction * fraction in fractions) {
		result = [result add: fraction];
		[oldResult release];
		oldResult = result;
	}
	
	[result print];
	
	[result release];
	[fractions release];
    
    [pool drain];
    return 0;
}
