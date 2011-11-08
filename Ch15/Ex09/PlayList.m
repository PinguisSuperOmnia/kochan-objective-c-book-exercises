#import "PlayList.h"

@implementation PlayList

@synthesize list;

-(id) initWithName: (NSString *) name
{
	self = [super init];
	
	if (self) {
		listName = [[NSString alloc] initWithString: name];
		list = [[NSMutableArray alloc] init];
	}
	
	return self;
}

-(void) addSong: (Song *) theSong
{
	[list addObject: theSong];
}

-(void) removeSong: (Song *) theSong
{
	[list removeObjectIdenticalTo: theSong];
}

-(void) search: (NSString *) query {
	PlayList *results = [[PlayList alloc] initWithName: @"Search Results"];
	NSRange subRange;
	
	for (Song *theSong in list) {
		for (NSString *field in [theSong fields]) {
			subRange = [[[theSong fields] objectForKey: field] rangeOfString: query options: NSCaseInsensitiveSearch];
			if (subRange.length > 0) {
				[results addSong: theSong];
			}
		}
	}
	[results print];
	[results release];
}

-(void) print
{
	NSLog(@"Contents of playlist: %@", listName);
	
	for (Song *theSong in list)
		[theSong print];
}

-(void) dealloc
{
	[listName release];
	[list release];
	[super dealloc];
}

@end
