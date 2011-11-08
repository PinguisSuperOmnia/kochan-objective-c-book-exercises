#import "Fraction.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Fraction *fractionA = [[Fraction alloc] init];
	Fraction *fractionB = [[Fraction alloc] init];
	Fraction *resultAdd = [[Fraction alloc] init];
	Fraction *resultSub = [[Fraction alloc] init];
	Fraction *resultMul = [[Fraction alloc] init];
	Fraction *resultDiv = [[Fraction alloc] init];
	Fraction *fractionC = [[Fraction alloc] init];
	
	[fractionA setTo: 1 over: 2];
	[fractionB setTo: 2 over: 3];
	
	resultAdd = [fractionA add: fractionB];
	[resultAdd print: FALSE];
	
	resultSub = [fractionA subtract: fractionB];
	[resultSub print: FALSE];
	
	resultMul = [fractionA multiply: fractionB];
	[resultMul print: FALSE];
	
	resultDiv = [fractionA divide: fractionB];
	[resultDiv print: FALSE];
	
	[fractionC setTo: 10 over: 5];
	[fractionC print: FALSE];
	[fractionC print: TRUE];
	
	
	[fractionA release];
	[fractionB release];
	[resultAdd release];
	[resultSub release];
	[resultMul release];
	[resultDiv release];
	[fractionC release];
	
    [pool drain];
    return 0;
}
