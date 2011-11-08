#import "AddressBook.h"

@implementation AddressCard

// @synthesize name, email, address, phone;
@synthesize fields;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail andAddress: (NSString *) theAddress andPhone: (NSString *) thePhone
{
	self.fields = [NSMutableDictionary dictionaryWithObjectsAndKeys:
		theName, @"name", theEmail, @"email", theAddress, @"address", thePhone, @"phone", nil ];
}

-(void) setField: (NSString *) field andValue: (NSString *) value
{
	[fields setObject: value forKey: field];
}

-(NSComparisonResult) compareNames: (id) element
{
	return [[self.fields objectForKey: @"name"] compare: [[element fields] objectForKey: @"name"]];
}

-(void) print
{
	NSLog(@"====================================");
	NSLog(@"|											|");
	NSLog(@"|	%-31s	|", [[self.fields objectForKey: @"name"] UTF8String]);
	NSLog(@"|	%-31s	|", [[self.fields objectForKey: @"email"] UTF8String]);
	NSLog(@"|	%-31s	|", [[self.fields objectForKey: @"address"] UTF8String]);
	NSLog(@"|	%-31s	|", [[self.fields objectForKey: @"phone"] UTF8String]);
	NSLog(@"|											|");	
	NSLog(@"|											|");	
	NSLog(@"|											|");	
	NSLog(@"|											|");	
	NSLog(@"|			O						O		|");
	NSLog(@"====================================");
	
}

-(void) dealloc
{
	[fields release];
	[super dealloc];
}


@end



@implementation AddressBook
// set up the Addressbook's name and an empty book

-(id) initWithName: (NSString *) name
{
	self = [super init];
	
	if (self) {
		bookName = [[ NSString	alloc] initWithString: name];
		book = [[NSMutableArray alloc] init];
	}
	
	return self;
}

-(void) addCard: (AddressCard *) theCard
{
	[book addObject: theCard];
}

-(void) removeCard: (AddressCard *) theCard
{
	[book removeObjectIdenticalTo: theCard];
}

-(NSMutableArray *) lookup: (NSString *) theName
{
	NSRange subRange;
	NSMutableArray *results = [[NSMutableArray alloc] init];
	for (AddressCard *nextCard in book) {
		for ( NSString *field in [nextCard fields]) {
			subRange = [[[nextCard fields] objectForKey: field] rangeOfString: theName options: NSCaseInsensitiveSearch];
			if ( subRange.length > 0 ) {
				[results addObject: nextCard];
				continue;
			}
		}
	}
	
	if ([results count] > 0)
		return results;
	return nil;
}

-(void) sort
{
	[book sortUsingSelector: @selector (compareNames:)];
}


-(int) entries
{
	return [book count];
}

-(void) list
{
	NSLog(@"=========  Contents of: %@  =========", bookName);
	
	for (AddressCard *theCard in book)
	    NSLog(@"%-20s	%-32s", [[[theCard fields] objectForKey: @"name"] UTF8String], [[[theCard fields] objectForKey: @"email"] UTF8String]);
	
	
	NSLog(@"=====================================================");
	
}

-(void) dealloc
{
	[bookName release];
	[book release];
	[super dealloc];
}

@end


