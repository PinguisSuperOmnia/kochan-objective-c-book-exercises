// Shared Method Names:  Polymorphism


#import "Fraction.h"
#import "Complex.h"

int main (int argc, char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	Fraction *fraction = [[Fraction alloc] init];
	Complex *complex = [[Complex alloc] init];
	id	number = [[Complex alloc] init];
	
	NSLog(@"%d", [fraction isMemberOfClass: [Complex class]]);
	NSLog(@"%d", [complex isMemberOfClass: [NSObject class]]); 
	NSLog(@"%d", [complex isKindOfClass: [NSObject class]]); 
	NSLog(@"%d", [fraction isKindOfClass: [Fraction class]]); 
	NSLog(@"%d", [fraction respondsToSelector: @selector (print)]); 
	NSLog(@"%d", [complex respondsToSelector: @selector (print)]); 
	NSLog(@"%d", [Fraction instancesRespondToSelector: @selector (print)]); 
	NSLog(@"%d", [number respondsToSelector: @selector (print)]);
	NSLog(@"%d", [number isKindOfClass: [Complex class]]); 
	NSLog(@"%d", [number respondsToSelector: @selector (release)]); 
	NSLog(@"%d", [[number class] respondsToSelector: @selector (alloc)]);
	
    [pool drain];
    return 0;
}

