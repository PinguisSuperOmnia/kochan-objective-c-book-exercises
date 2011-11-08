#import "Complex.h"

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	Complex * complexA = [[Complex alloc] init];
	Complex * complexB = [[Complex alloc] init];
	
	[complexA setReal: 5.3];
	[complexA setImaginary: 7];
	
	[complexB setReal: 2.7];
	[complexB setImaginary: 4];
	
	Complex * result = [complexA add: complexB];
	
	[result print];
	
	[complexA release];
	[complexB release];
	[result release];
	
	[pool drain];
	return 0;
}
