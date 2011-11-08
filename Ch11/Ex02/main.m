#import "Fraction.h"

@interface Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *) f;
-(int) compare: (Fraction *) f;
@end

@implementation Fraction (Comparison)

-(BOOL) isEqualTo: (Fraction *) f
{	
	return (numerator * f.denominator == denominator * f.numerator);
}

-(int) compare: (Fraction *) f
{
	int ad = numerator * f.denominator;
	int bc = denominator * f.numerator;
	
	if (ad > bc) {
		return 1;
	} else if (ad == bc) {
		return 0;
	} else {
		return -1;
	}
}

@end


int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Fraction *a = [[Fraction alloc] init];
	Fraction *b = [[Fraction alloc] init];
	
	[a setTo: 1 over: 3];
	[b setTo: 9 over: 6];
	
	NSLog(@"%d", [a isEqualTo: b]);
	NSLog(@"%d", [a compare: b]);
	
	[a release];
	[b release];
    
    [pool drain];
    return 0;
}
