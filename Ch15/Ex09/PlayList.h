#import <Foundation/Foundation.h>
#import "Song.h"

@interface PlayList : NSObject
{
	NSString *listName;
	NSMutableArray *list;
}

@property (retain) NSMutableArray *list;

-(id) initWithName: (NSString *) name;
-(void) addSong: (Song *) theSong;
-(void) removeSong: (Song *) theSong;
-(void) search: (NSString *) query;
-(void) print;
-(void) dealloc;

@end