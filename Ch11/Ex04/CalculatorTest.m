#import "Calculator.h";
#import "CalculatorTrig.h";

int main (int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Calculator *deskCalc;
	
	deskCalc = [[Calculator alloc] init];
	[deskCalc clear];
	[deskCalc setAccumulator: 100.0];
	//deskCalc.accumulator = 100;
	[deskCalc add: 200.];
	[deskCalc divide: 15.0];
	[deskCalc subtract: 10.0];
	[deskCalc multiply: 5];
	NSLog (@"The result is %g", [deskCalc accumulator]);
	
	NSLog (@"Woah: %g", [deskCalc add: 10]);
	
	[deskCalc memoryStore];
	
	NSLog (@"Sign changed: %g", [deskCalc changeSign]);
	NSLog (@"Squared: %g", [deskCalc xSquared]);
	NSLog (@"Reciprocal: %g", [deskCalc reciprocal]);
	
	[deskCalc memoryRecall];
	
	NSLog (@"Recalled, now: %g", [deskCalc accumulator]);
	
	[deskCalc setAccumulator: 12];
	[deskCalc sin];
	NSLog (@"Now: %g", [deskCalc accumulator]);
	
	[deskCalc release];
	
	[pool drain];
	return 0;
}
