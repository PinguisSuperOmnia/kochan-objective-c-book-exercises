#import <Foundation/Foundation.h>

int main(int argc, char **argv) {
	typedef enum { Sunday = 1, Monday, Tuesday, Wednesday,
		Thursday, Friday, Saturday } Day;
	Day m = Monday;
	NSLog(@"%d", m);
}