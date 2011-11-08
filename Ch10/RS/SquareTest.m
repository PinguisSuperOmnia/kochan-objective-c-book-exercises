#import "Square.h"

int main( int argc, char* argv[] )
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    Square* s = [[Square alloc] init];

    [s setSide: 5];

    NSLog( @"Square s = %i", [s side]);
    NSLog( @"Area = %i, Perimeter = %i", [s area], [s perimeter] );

    [s release];

    [pool drain];
    return 0;
}

