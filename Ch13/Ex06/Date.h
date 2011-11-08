#import <Foundation/Foundation.h>

@interface Date: NSObject
{
	int year;
	unsigned short int month;
	unsigned short int day;
}

@property int year;
@property unsigned short int month, day;

-(void) setYear: (int) y andMonth: (unsigned short int) m andDay: (unsigned short int) d;
-(Date *) dateUpdate;
-(int) numberOfDays;
-(int) isLeapYear;
-(void) print;

@end