#import <Foundation/Foundation.h>

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog (@"%@", @"This is a test"); // Yes
	
	[pool drain];
	return 0;
}
