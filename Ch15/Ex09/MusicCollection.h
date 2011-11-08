#import <Foundation/Foundation.h>
#import "Song.h"
#import "PlayList.h"

@interface MusicCollection : NSObject
{
	NSString *musicCollectionName;
	NSMutableArray *collection;
	PlayList *library;
}

-(id) initWithName: (NSString *) name;
-(void) addPlayList: (PlayList *) thePlayList;
-(void) removePlayList: (PlayList *) thePlayList;
-(void) search: (NSString *) query;
-(void) print;
-(void) dealloc;

@end