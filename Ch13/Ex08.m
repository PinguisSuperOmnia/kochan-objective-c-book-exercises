#import <Foundation/Foundation.h>

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	int i;
	for (i=0; i<argc; i++) {
		NSLog(@"%s", argv[i]);
	}
	
	[pool drain];
}