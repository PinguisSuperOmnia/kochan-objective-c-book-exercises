#import <Foundation/NSObject.h>
#import <Foundation/NSString.h>
#import "AddressBook.h"


int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool	= [[NSAutoreleasePool alloc] init];
	NSString *aName = @"Julia Kochan";
	NSString *aEmail = @"jewls337@axlc.com";
	NSString *bName = @"Tony Iannino";
	NSString *bEmail = @"tony.iannino@techfitness.com";
	NSString *cName = @"Stephen Hitler";
	NSString *cEmail = @"steve@kochan-wood.com";
	NSString *dName = @"Jamie Baker";
	NSString *dEmail = @"jbaker@kochan-wood.com";
	

	AddressCard *card1 = [[ AddressCard alloc] init];
	AddressCard *card2 = [[ AddressCard alloc] init];
	AddressCard *card3 = [[ AddressCard alloc] init];
	AddressCard *card4 = [[ AddressCard alloc] init];
	
	// set up Four addressCards
	
	[card1 setName: aName andEmail: aEmail andAddress: @"123 main st, smallville, pa" andPhone: @"123-456-7890"];
	[card2 setName: bName andEmail: bEmail andAddress: @"9999 phily st, philadelphia, pa" andPhone: @"987-654-3210"];
	[card3 setName: cName andEmail: cEmail andAddress: @"lorem ipsum" andPhone: @"555-555-5555"];
	[card4 setName: dName andEmail: dEmail andAddress: @"lipsum" andPhone: @"666-666-6666"];
	
	AddressBook *myBook = [ AddressBook alloc];
	AddressCard *myCard;
		
	// Now initialize the Adress Book
	myBook = [ myBook initWithName:@"Linda's Address Book"];
	
	//add some cards to the address book
	[myBook addCard: card1];
	[myBook addCard: card2];
	[myBook addCard: card3];
	[myBook addCard: card4];
	
	// look up a person by name
	NSLog(@"Lookup: eph");
	
	NSMutableArray *results = [myBook lookup: @"987"];
	
	int i;
	
	for ( AddressCard *theCard in results ) {
		[theCard print];
	}
	
	// now remove the entry form the book
		
	[card1 release];
	[card2 release];
	[card3 release];
	[card4 release];
	
	[pool drain];
	
	return 0;
	
}
