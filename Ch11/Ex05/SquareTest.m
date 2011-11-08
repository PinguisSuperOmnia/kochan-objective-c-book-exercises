#import "Square.h"

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	Square *s = [[Square alloc] initWithSide: 10];
	[s setSide: 10];
	
	NSLog(@"side: %d, area: %d, perimeter: %d", [s side], [s area], [s perimeter]);
	
	[s release];
	
	[pool drain];
	return 0;
}