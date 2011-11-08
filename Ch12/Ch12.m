#import <Foundation/Foundation.h>

#undef MIN
#undef MAX
#define MIN(a, b) ((a) < (b) ? (a) : (b))
#define MAX(a, b) ((a) > (b) ? (a) : (b))
#define MAX3(a, b, c) ((a) < (b) ? (MAX(a, c) ): (MAX(b, c)))
#define IS_LOWER_CASE(x) ( ((x) >= 'a') && ((x) <= 'z') )
#define IS_UPPER_CASE(x) ( ((x) >= 'A') && ((x) <= 'Z') )
#define IS_ALPHABETIC(x) ( IS_LOWER_CASE(x) || IS_UPPER_CASE(x) )
#define IS_DIGIT(x) ( ((x) >= '0') && ((x) <= '9') )
#define IS_SPECIAL(x) ( !(IS_ALPHABETIC(x)) && !(IS_DIGIT(x)) )


int main(int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSLog(@"%d, %d, %d", MIN(10, 2), MIN(2, 10), MIN(3,2));
	NSLog(@"%d", MAX3(5, 3, 11));
	NSLog(@"%d", IS_LOWER_CASE('d'));
	NSLog(@"%d", IS_LOWER_CASE('D'));
	NSLog(@"%d", IS_UPPER_CASE('d'));
	NSLog(@"%d", IS_UPPER_CASE('D'));
	NSLog(@"%d, %d", IS_ALPHABETIC('1'), IS_ALPHABETIC('z'));
	NSLog(@"%d, %d, %d", IS_DIGIT('9'), IS_DIGIT('0' + 1), IS_DIGIT('z'));
	NSLog(@"%d, %d, %d", IS_SPECIAL('@'), IS_SPECIAL('a'), IS_SPECIAL('9'));
	
	return 0;
}