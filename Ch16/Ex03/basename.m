#import <Foundation/Foundation.h>

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSString *path, *basename;
	NSProcessInfo *proc = [NSProcessInfo processInfo];
	
	if ([[proc arguments] count] < 2) {
		printf("Usage: basename string\n");
		return 0;
	}
	path = [[proc arguments] objectAtIndex: 1];
	basename = [path lastPathComponent];
	
	printf("%s\n", [basename UTF8String]);
	
	[proc release];
	[path release];
	[basename release];
	
	[pool drain];
	return 0;
}