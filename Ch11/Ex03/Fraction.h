#import <Foundation/Foundation.h>
#import <stdio.h>

// Define the Fraction class

@interface Fraction : NSObject {
	int numerator;
	int denominator;
}

@property int numerator, denominator;
-(void) setTo: (int) n over: (int) d;
-(void) reduce;
-(double) convertToNum;
-(void) print;

@end
