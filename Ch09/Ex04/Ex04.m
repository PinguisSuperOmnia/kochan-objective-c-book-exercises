// Implement a Calculator class

#import <Foundation/Foundation.h>

@interface Calculator: NSObject
{
	double accumulator;
	double memory;
}

// accumulator methods
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

// arithmetic methods
-(double) add: (double) value;
-(double) subtract: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;
-(double) changeSign;
-(double) reciprocal;
-(double) xSquared;

// memory methods
-(double) memoryClear;
-(double) memoryStore;
-(double) memoryRecall;
-(double) memoryAdd;
-(double) memorySubtract;

@end


@implementation Calculator

-(void) setAccumulator: (double) value
{
	accumulator = value;
}

-(void) clear
{
	accumulator = 0;
}

-(double) accumulator
{
	return accumulator;
}

-(double) add: (double) value
{
	accumulator += value;
	return accumulator;
}

-(double) subtract: (double) value
{
	accumulator -= value;
	return accumulator;
}

-(double) multiply: (double) value
{
	accumulator *= value;
	return accumulator;
}

-(double) divide: (double) value
{
	@try {
		accumulator /= value;
		return accumulator;
	}
	@catch (NSException *exception) {
		NSLog(@"Caught %@%@", [exception name], [exception reason]);
		return 0;
	}
}

-(double) changeSign
{
	accumulator = -1 * accumulator;
	return accumulator;
}

-(double) reciprocal
{
	accumulator = 1 / accumulator;
	return accumulator;
}

-(double) xSquared
{
	accumulator = accumulator * accumulator;
	return accumulator;
}

-(double) memoryClear
{
	memory = 0;
	return accumulator;
}

-(double) memoryStore
{
	memory = accumulator;
	return accumulator;
}

-(double) memoryRecall
{
	accumulator = memory;
	return accumulator;
}

-(double) memoryAdd
{
	memory += accumulator;
	return accumulator;
}

-(double) memorySubtract
{
	memory -= accumulator;
	return accumulator;
}

@end


int main (int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Calculator *deskCalc;
	
	deskCalc = [[Calculator alloc] init];
	[deskCalc clear];
	[deskCalc setAccumulator: 100.0];
	[deskCalc add: 200.];
	[deskCalc divide: 15.0];
	[deskCalc subtract: 10.0];
	[deskCalc multiply: 5];
	[deskCalc divide: 0];
	NSLog (@"The result is %g", [deskCalc accumulator]);
	
	NSLog (@"Woah: %g", [deskCalc add: 10]);
	
	[deskCalc memoryStore];
	
	NSLog (@"Sign changed: %g", [deskCalc changeSign]);
	NSLog (@"Squared: %g", [deskCalc xSquared]);
	NSLog (@"Reciprocal: %g", [deskCalc reciprocal]);
	
	[deskCalc memoryRecall];
	
	NSLog (@"Recalled, now: %g", [deskCalc accumulator]);
	
	[deskCalc release];
	
	[pool drain];
	return 0;
}
