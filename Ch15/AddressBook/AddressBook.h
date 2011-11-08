#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/Foundation.h>

@interface	AddressCard: NSObject
{
	NSString *name;
	NSString *email;
}
@property (copy, nonatomic) NSString *name, *email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;
-(NSComparisonResult) compareNames: (id) element;  
-(void) print;
@end

@interface AddressBook : NSObject
{

	NSString *bookName;
	NSMutableArray *book;
}

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;  
-(AddressCard *) lookup: (NSString *) theName; 
-(void) sort; 
-(int) entries;
-(void) list;
-(void) dealloc;

@end
