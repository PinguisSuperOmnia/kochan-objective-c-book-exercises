/* Write a program to test the effects of adding and removing entries in a dictionary
on the reference count of the objects you add and remove. */
#import <Foundation/Foundation.h>

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
	NSMutableString *str = [[NSMutableString alloc] initWithString: @"Hello"];
	NSLog(@"After initializing: %x", [str retainCount]);
	[dict setObject: str forKey: @"mykey"];
	NSLog(@"After adding to dictionary: %x", [str retainCount]);
	[str retain];
	NSLog(@"After retaining: %x", [str retainCount]);
	[dict release];
	NSLog(@"After releasing dictionary: %x", [str retainCount]);
	
	[pool drain];
	return 0;
}