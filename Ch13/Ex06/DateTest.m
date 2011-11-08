#import "Date.h"

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	Date *today = [[Date alloc] init];
	Date *tomorrow;
	
	[today setYear: 2001 andMonth: 12 andDay: 31];
	tomorrow = [today dateUpdate];

	[today print];
	[tomorrow print];
	
	[today release];
	[tomorrow release];
	
	[pool drain];
	return 0;
}