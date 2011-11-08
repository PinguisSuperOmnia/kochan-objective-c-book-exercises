#import "Foundation/Foundation.h"
#import "Rectangle.h"

@interface Square: NSObject
{
	Rectangle *rect;
}

-(Square *) initWithSide: (int) s;
-(void) setSide: (int) s;
-(int) side;
-(int) area;
-(int) perimeter;
-(void) dealloc;
@end