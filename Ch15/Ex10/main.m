/* Write a program that takes an array of NSInteger objects and produces a frequency
chart that lists each integer and how many times it occurs in the array. Use an NSCountedSet
object to construct your frequency counts. */

#import <Foundation/Foundation.h>

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSArray *integers = [ NSArray arrayWithObjects:
		[NSNumber numberWithInteger: 4],
		[NSNumber numberWithInteger: 2],
		[NSNumber numberWithInteger: 9],
		[NSNumber numberWithInteger: 2],
		[NSNumber numberWithInteger: 7],
		[NSNumber numberWithInteger: 4],
		[NSNumber numberWithInteger: 1],
		[NSNumber numberWithInteger: 3],
		nil ];
	int i;
	NSCountedSet *results = [[NSCountedSet alloc] initWithArray: integers];
	
	for (NSNumber *element in results) {
		NSLog(@"%d: %d", [element integerValue], [results countForObject: element]);
	}	
	
	return 0;										
}
