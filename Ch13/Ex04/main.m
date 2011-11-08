#import "Fraction.h"

Fraction *addFractions( Fraction *fractions[], unsigned int size) {

	Fraction *result = [[Fraction alloc] init];
	
	[result setTo: 0 over: 1];
	Fraction *oldResult = result;
	
	int i;
	for (i=0; i<size; i++) {
		result = [result add: fractions[i]];
		[oldResult release];
		oldResult = result;
	}
	
	return result;
}

int main (int argc, char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Fraction *fractions[3];
	Fraction *fracResult;
	fractions[0] = [[Fraction alloc] init];
	fractions[1] = [[Fraction alloc] init];
	fractions[2] = [[Fraction alloc] init];
	
	[fractions[0] setTo: 1 over: 2];
	[fractions[1] setTo: 1 over: 3];
	[fractions[2] setTo: 1 over: 6];
	fracResult = addFractions(fractions, 3);
	[fracResult print];
	
	[fractions[0] release];
	[fractions[1] release];
	[fractions[2] release];
	[fracResult release];
	
    [pool drain];
    return 0;
}

