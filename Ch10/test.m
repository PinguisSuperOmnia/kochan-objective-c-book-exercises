#import <Foundation/Foundation.h>

int main(int argc, char **argv) {
	char c = '\377';
	NSLog(@"%d", (unsigned char) c);
	
	if ((int) c == -1) {
		NSLog(@"Sign extension is occurring");
	} else {
		NSLog(@"Sign extension is not occurring");
	}
}