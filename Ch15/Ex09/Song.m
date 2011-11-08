#import "Song.h"

@implementation Song

@synthesize fields;

-(void) setField: (NSString *) field andValue: (NSString *) value
{
	[fields setObject: value forKey: field];
}

-(id) myInit
{
	self = [super init];
	if (self) {
		fields = [[NSMutableDictionary alloc] init];
	}
	
	return self;
}

-(void) setTitle: (NSString *) theTitle
{
	[self setField: @"title" andValue: theTitle];
}

-(void) setArtist: (NSString *) theArtist
{
	[self setField: @"artist" andValue: theArtist];
}

-(void) setAlbum: (NSString *) theAlbum
{
	[self setField: @"album" andValue: theAlbum];
}

-(void) setPlayingTime: (NSString *) thePlayingTime
{
	[self setField: @"playingTime" andValue: thePlayingTime];
}

-(void) print
{
	NSLog(@"==SONG==");
	NSLog(@"Title: %@", [fields objectForKey: @"title"]);
	NSLog(@"Artist: %@", [fields objectForKey: @"artist"]);
	NSLog(@"Album: %@", [fields objectForKey: @"album"]);
	NSLog(@"Playing time: %@", [fields objectForKey: @"playingTime"]);
	NSLog(@"========");
}

-(void) dealloc
{
	[fields release];
	[super dealloc];
}

@end
