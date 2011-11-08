#import <Foundation/Foundation.h>
#import "Song.h"
#import "PLayList.h"
#import "MusicCollection.h"

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	Song *aria = [[Song alloc] myInit];
	Song *variation1 = [[Song alloc] myInit];
	Song *fudgeFugue = [[Song alloc] myInit];
	PlayList *goldberg = [[PlayList alloc] initWithName: @"Goldberg Playlist"];
	PlayList *mix = [[PlayList alloc] initWithName: @"Mix Playlist"];
	MusicCollection *c = [[MusicCollection alloc] initWithName: @"My collection"];

	[aria setTitle: @"Aria"];
	[aria setArtist: @"Johann Sebastian Bach"];
	[aria setAlbum: @"The Goldberg Variations"];
	[aria setPlayingTime: @"3:04"];
	
	[variation1 setTitle: @"Variation 1"];
	[variation1 setArtist: @"Johann Sebastian Bach"];
	[variation1 setAlbum: @"The Goldberg Variations"];
	[variation1 setPlayingTime: @"1:10"];
	
	[fudgeFugue setTitle: @"Little Fugue in G minor"];
	[fudgeFugue setArtist: @"Johann Sebastian Bach"];
	[fudgeFugue setAlbum: @"Me Playing Bach"];
	[fudgeFugue setPlayingTime: @"2:35"];

	[goldberg addSong: aria];
	[goldberg addSong: variation1];
	
	[mix addSong: fudgeFugue];
	[mix addSong: variation1];
	
	[c addPlayList: goldberg];
	[c addPlayList: mix];
	[c print];
	
	NSLog(@"=====================================");
	NSLog(@"=====================================\n");
	[goldberg search: @"bach"];
	[c search: @"my"];
	
	[aria release];
	[variation1 release];
	[fudgeFugue release];
	[goldberg release];
	[mix release];
	[c release];
	
	[pool drain];
	
}
