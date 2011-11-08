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