/* What effect do you think the NSArray’s replaceObjectAtIndex:withObject: method will
have on the reference count of the object that is replaced in the array? What effect will
it have on the object placed into the array? Write a program to test it.Then consult your
documentation on this method to verify your results. */
#import <Foundation/Foundation.h>

int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSMutableArray *myArr = [[NSMutableArray alloc] init];
	NSNumber *myNum = [NSNumber numberWithInteger: 14];
	NSNumber *myNum2 = [NSNumber numberWithInteger: 16];
	
	NSLog(@"Retain count of myNum: %x; myNum2: %x", [myNum retainCount], [myNum2 retainCount]);
	
	[myArr addObject: myNum];
	NSLog(@"Retain count of myNum: %x; myNum2: %x", [myNum retainCount], [myNum2 retainCount]);
	
	[myArr replaceObjectAtIndex: 0 withObject: myNum2];
	
	NSLog(@"Retain count of myNum: %x; myNum2: %x", [myNum retainCount], [myNum2 retainCount]);
	
	[myNum2 release];
	NSLog(@"Retain count of myNum: %x; myNum2: %x", [myNum retainCount], [myNum2 retainCount]);
	
	[pool drain];
	return 0;
}
