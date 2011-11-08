#import <Foundation/Foundation.h>

@interface Fraction : NSObject {
    int numerator;
    int denominator;
}

@property int numerator, denominator;

-(int) numAdds;
-(void) print;
-(void) setTo: (int) n over: (int) d;
-(double) convertToNum;
-(void) reduce;
-(Fraction *) add: (Fraction *) f;

@end
