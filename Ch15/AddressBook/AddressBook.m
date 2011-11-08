#import "AddressBook.h"

@implementation AddressCard

@synthesize name, email;

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail
{
	self.name = theName;
	self.email = theEmail;
}


-(NSComparisonResult) compareNames: (id) element
{
	return [name compare: [element name]];
}

-(void) print
{
	NSLog(@"====================================");
	NSLog(@"|											|");
	NSLog(@"|	%-31s	|", [name UTF8String]);
	NSLog(@"|	%-31s	|", [email UTF8String]);
	NSLog(@"|											|");	
	NSLog(@"|											|");	
	NSLog(@"|											|");	
	NSLog(@"|											|");	
	NSLog(@"|			O						O		|");
	NSLog(@"====================================");
	
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

-(AddressCard *) lookup: (NSString *) theName
{
	for (AddressCard *nextCard in book) {
		if ( [[nextCard name] caseInsensitiveCompare: theName] == NSOrderedSame)
			return nextCard;
	}
	
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
	    NSLog(@"%-20s	%-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
	
	
	NSLog(@"=====================================================");
	
}

-(void) dealloc
{
	[bookName release];
	[book release];
	[super dealloc];
}

@end


