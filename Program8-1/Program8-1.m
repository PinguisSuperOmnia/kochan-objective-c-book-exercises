// Simple example to illustrate inheritance
#import <Foundation/Foundation.h>

// ClassA declaration and definition
@interface ClassA: NSObject
{
	int x;
}

-(void) initVar;

@end

@implementation ClassA

-(void) initVar
{
	x = 100;
}

@end


// Class B declaration and definition
@interface ClassB : ClassA

-(void) printVar;

@end

@implementation ClassB

-(void) printVar
{
	NSLog (@"x = %i", x);
}

@end

@interface ClassC : ClassB

-(void) initVar;

@end

@implementation ClassC

-(void) initVar
{
	x = 300;
}

@end


int main (int argc, char *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	ClassA *a = [[ClassA alloc] init];
	ClassB *b = [[ClassB alloc] init];
	ClassC *c = [[ClassC alloc] init];
	
	[a initVar];
	
	[b initVar];
	[b printVar];
	
	[c initVar];
	[c printVar];
	
	[a release];
	[b release];
	[c release];
	
	[pool drain];
	return 0;
}
