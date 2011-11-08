#import "MusicCollection.h"

@implementation MusicCollection

-(id) initWithName: (NSString *) name
{
	self = [super init];
	
	if (self) {
		musicCollectionName = [[NSString alloc] initWithString: name];
		collection = [[NSMutableArray alloc] init];
		library = [[PlayList alloc] initWithName: @"The Library"];
		[collection addObject: library];
	}
	
	return self;
}

-(void) addPlayList: (PlayList *) thePlayList
{
	[collection addObject: thePlayList];
	for (Song *theSong in [thePlayList list]) {
		[library addSong: theSong];
	}
}

-(void) removePlayList: (PlayList *) thePlayList
{
	[collection removeObjectIdenticalTo: thePlayList];
	for (Song *theSong in [thePlayList list]) {
		[library removeSong: theSong];
	}
}

-(void) search: (NSString *) query {
	[library search: query];
}

-(void) print
{
	NSLog(@"COLLECTION: %@", musicCollectionName);
	
	for (PlayList *thePlayList in collection)
		[thePlayList print];
}

-(void) dealloc
{
	[musicCollectionName release];
	[collection release];
	[super dealloc];
}

@end