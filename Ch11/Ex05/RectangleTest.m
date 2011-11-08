#import "Rectangle.h"

int main( int argc, char* argv[] )
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

    Rectangle* r = [[Rectangle alloc] init];

    [r setWidth: 5 andHeight: 8];

    NSLog( @"w = %i, h = %i", r.width, r.height );
    NSLog( @"Area = %i, Perimeter = %i", [r area], [r perimeter] );

    [r release];

    [pool drain];
    return 0;
}
