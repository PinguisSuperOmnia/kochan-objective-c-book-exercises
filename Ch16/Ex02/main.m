/*
Write a command-line tool called myfind that takes two arguments.
The first is a starting directory to begin the search, and the second is a filename to locate.
So, the command line
$ myfind /Users proposal.doc
/Users/stevekochan/MyDocuments/proposals/proposal.doc
begins searching the file system from /Users to locate the file proposal.doc.
Print either a full path to the file if it’s found (as shown) or an appropriate message if it’s not.
*/

#import <Foundation/Foundation.h>

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSProcessInfo *proc = [NSProcessInfo processInfo];
	NSString *searchDir, *query, *path;
	NSFileManager *fm = [NSFileManager defaultManager];
	NSDirectoryEnumerator *dirEnum;
	BOOL found = NO;
	
	if ([[proc arguments] count] < 3) {
		NSLog(@"Too few arguments.");
		exit(1);
	}
	searchDir = [[proc arguments] objectAtIndex: 1];
	query = [[proc arguments] objectAtIndex: 2];

	dirEnum = [fm enumeratorAtPath: searchDir];
	
	while ((path = [dirEnum nextObject]) != nil) {
		if ( [[path lastPathComponent] isEqualToString: query] ) {
			found = YES;
			NSLog(@"%@", [searchDir stringByAppendingPathComponent: path]);
			break;
		}
	}
	
	if (!found) {
		NSLog(@"No such file found in specified path.");
	}
	
	[proc release];
	[fm release];
	[searchDir release];
	[query release];
	[path release];
		
	[pool drain];
	return 0;
}