#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
	int numerator;
	int denominator;
}

-(void) print: (BOOL) reduceAfter;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;
-(int) numerator;
-(int) denominator;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
-(void) reduce;
-(Fraction *) add: (Fraction *) f;
// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f;
// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f;
// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f;

@end
