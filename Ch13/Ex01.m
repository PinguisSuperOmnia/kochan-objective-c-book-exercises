#import <Foundation/Foundation.h>

float average(float f[], int size) {
	int i = 0;
	float sum = 0;
	for (i=0; i<size; i++) {
		sum += f[i];
	}
	return sum / size;
}

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	float f[] = { 1.2, 3.4, 5.6, 7.8, 9.0 };
	float result;
	
	int size = sizeof (f) / sizeof (float);
	
	result = average(f, size);
	NSLog(@"The average is %f", result);
	
	[pool drain];
}