/*
Using the Fraction class defined in Part I, set up a mutable array of fractions with arbitrary values.
Then sort the array using the sortUsingSelector: method from the NSMutableArray class. Add a Comparison category to the 
Fraction class and implement your comparison method in that category.
*/

#import "Fraction.h"

@interface Fraction (MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end

@interface Fraction (Comparison)
-(NSComparisonResult) compareFractions: (Fraction *) element;	
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

@implementation Fraction (Comparison)
-(NSComparisonResult) compareFractions: (Fraction *) element
{
	int ad = numerator * element.denominator;
	int bc = denominator * element.numerator;
	
	if (ad > bc) {
		return NSOrderedDescending;
	} else if (ad == bc) {
		return NSOrderedSame;
	} else {
		return NSOrderedAscending;
	}
}
@end


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Fraction *a = [[Fraction alloc] init];
	Fraction *b = [[Fraction alloc] init];
	Fraction *c = [[Fraction alloc] init];
	
	[a setTo: 1 over: 3];
	[b setTo: 2 over: 5];
	[c setTo: -1 over: 6];
	
	NSMutableArray *fractions = [NSMutableArray arrayWithObjects: a, b, c, nil];
	
	[fractions sortUsingSelector: @selector (compareFractions:)];
	
	for (Fraction * fraction in fractions) {
		[fraction print];
	}
	
	[a release];
	[b release];
	[c release];
	[fractions release];
    
    [pool drain];
    return 0;
}
