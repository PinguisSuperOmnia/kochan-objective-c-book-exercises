#import "Date.h"

@implementation Date

@synthesize year, month, day;

-(void) setYear: (int) y andMonth: (unsigned short int) m andDay: (unsigned short int) d
{
	year = y;
	month = m;
	day = d;
}

-(Date *) dateUpdate
{
	Date *tomorrow = [[Date alloc] init];
	
	if (day != [self numberOfDays]) {
		[tomorrow setDay: day + 1];
		[tomorrow setMonth: month];
		[tomorrow setYear: year];
	} else if (month == 12) { // end of year
		[tomorrow setDay: 1];
		[tomorrow setMonth: 1];
		[tomorrow setYear: year + 1];
	} else { // end of month
		[tomorrow setDay: 1];
		[tomorrow setMonth: month + 1];
		[tomorrow setYear: year];
	}
	
	return tomorrow;
}

-(int) numberOfDays
{
	int answer;
	int daysPerMonth[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };
	
	if ( [self isLeapYear] && month == 2 )
		answer = 29;
	else
		answer = daysPerMonth[month - 1];
	
	return answer;
}

-(int) isLeapYear
{
	if ( (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 )
		return YES;
	else
		return NO;
}

-(void) print
{
	NSLog(@"%d/%d/%d", month, day, year);
}

@end