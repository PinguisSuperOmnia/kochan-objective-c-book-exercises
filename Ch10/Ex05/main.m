// Shared Method Names:  Polymorphism


#import "Fraction.h"
#import "Complex.h"

int main (int argc, char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	typedef Fraction *FractionObj;

	FractionObj f1 = [[Fraction alloc] init];
	FractionObj f2 = [[Fraction alloc] init];
	FractionObj fracResult;
	
	[f1 setTo: 1 over: 2];
	[f2 setTo: 1 over: 3];
	fracResult = [f1 add: f2];
	[fracResult print];
	
	[f1 release];
	[f2 release];
	[fracResult release];
	
    [pool drain];
    return 0;
}

