// Shared Method Names:  Polymorphism


#import "Fraction.h"
#import "Complex.h"

int main (int argc, char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	id dataValue1 = [[Fraction alloc] init];
	id dataValue2 = [[Fraction alloc] init];
	id result;
	
	[dataValue1 setTo: 2 over: 4];
	[dataValue2 setTo: 3 over: 5];
	
	result = [dataValue1 add: dataValue2];
	
	[result print];
	
	[dataValue1 release];
	[dataValue2 release];
	[result release];
	
    [pool drain];
    return 0;
}

