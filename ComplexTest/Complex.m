#import "Complex.h"

@implementation Complex

-(void) setReal: (double) a {
	real = a;
}

-(void) setImaginary: (double) b {
	imaginary = b;
}

-(void) print {
	NSLog(@"%f + %fi", real, imaginary);
}

-(double) real {
	return real;
}

-(double) imaginary {
	return imaginary;
}

-(Complex *) add: (Complex *) complexNum {
	Complex * result = [[Complex alloc] init];
	
	int resultReal = real + [complexNum real];
	int resultImaginary = imaginary + [complexNum imaginary];
	[result setReal: resultReal];
	[result setImaginary: resultImaginary];
	
	return result;
}

@end

