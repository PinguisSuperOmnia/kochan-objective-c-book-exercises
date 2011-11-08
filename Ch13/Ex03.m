#import <Foundation/Foundation.h>
#define N 101

void sieve() {
	int p[N+1] = { 1, 1 };
	int i = 2;

	for (i=2; i<=N; i++) {
		if (p[i] == 0) {
			NSLog(@"PRIME: %d", i);
			int j;
			for (j=2; i*j<=N; j++) {
				p[i*j] = 1;
			}
		}
	}
}

int main(int argc, char **argv) {
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	sieve(20);
	
	[pool drain];
}