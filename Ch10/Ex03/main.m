// Shared Method Names:  Polymorphism


#import "Fraction.h"
#import "Complex.h"

int main (int argc, char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Fraction *f1 = [[Fraction alloc] init];
	Fraction *f2 = [[Fraction alloc] init];
	Fraction *result;
	
	[f1 setTo: 1 over: 10];
	[f2 setTo: 2 over: 15];
	result = [f1 add: f2];
	result = [result add: result];
	[result print];
	NSLog(@"%i", [result numAdds]);
	
	
	
	[f1 release];
	[f2 release];
	[result release];
	
    [pool drain];
    return 0;
}

