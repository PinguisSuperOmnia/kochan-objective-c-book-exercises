#import "Square.h"

@implementation Square

-(Square *) initWithSide: (int) side
{
    self = [super init];
	
    if (self)
        [self setSide: side];
	
    return self;
}

-(void) setSide: (int) s
{
    [self setWidth: s andHeight: s];
}

-(int) side
{
    return width;
}
@end

