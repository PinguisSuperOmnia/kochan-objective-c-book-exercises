/*
Write a typedef definition for a struct date called Date that enables you to make declarations such as Date todaysDate;
in your program.
*/

#import <Foundation/Foundation.h>

typedef struct date {
	int year;
	unsigned short int month;
	unsigned short int day;
} Date;

void printDate(Date d) {
	NSLog(@"%d/%u/%u", d.month, d.day, d.year);
}

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	Date todaysDate = { 2011, 3, 24 };
	printDate( todaysDate );
	
	[pool drain];
	return 0;
}
