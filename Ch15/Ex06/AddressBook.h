#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import <Foundation/NSAutoreleasePool.h>
#import <Foundation/NSArray.h>
#import <Foundation/NSDictionary.h>

@interface	AddressCard: NSObject
{
	NSMutableDictionary *fields;	
}
// @property (copy, nonatomic) NSMutableDictionary *fields;
@property (copy, nonatomic) NSMutableDictionary *fields;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andPhone: (NSString *) thePhone;
-(NSComparisonResult) compareNames: (id) element;
-(void) setField: (NSString *) field andValue: (NSString *) value;  
-(void) print;
-(void) dealloc;
@end

@interface AddressBook : NSObject
{

	NSString *bookName;
	NSMutableArray *book;
}

-(id) initWithName: (NSString *) name;
-(void) addCard: (AddressCard *) theCard;
-(void) removeCard: (AddressCard *) theCard;
-(BOOL) removeName: (NSString *) theName;
-(NSMutableArray *) lookup: (NSString *) theName;
-(void) sort; 
-(int) entries;
-(void) list;
-(void) dealloc;

@end
