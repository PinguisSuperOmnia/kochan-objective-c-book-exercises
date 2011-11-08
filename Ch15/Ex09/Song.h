#import <Foundation/Foundation.h>

@interface Song: NSObject
{
	NSMutableDictionary *fields;
}

@property (copy, nonatomic) NSMutableDictionary *fields;
// title, artist, album, playing time
-(void) setField: (NSString *) field andValue: (NSString *) value;
-(void) setTitle: (NSString *) theTitle;
-(void) setArtist: (NSString *) theArtist;
-(void) setAlbum: (NSString *) theAlbum;
-(void) setPlayingTime: (NSString *) thePlayingTime;
-(void) print;
-(id) myInit;
-(void) dealloc;

@end