#import "Square.h"
#import "Rectangle.h"

@implementation Square

-(Square *) initWithSide: (int) s
{
	self = [super init];
	
	rect = [[Rectangle alloc] init];
	
	if (self)
		[self setSide: s];
	
	return self;
}

-(void) setSide: (int) s
{
	[rect setWidth: s andHeight: s];
}

-(int) side
{
	return [rect width];
}

-(int) area
{
	return [rect area];
}

-(int) perimeter
{
	return [rect perimeter];
}

-(void) dealloc
{
	if (rect)
		[rect release];
	
	[super dealloc];
}

@end

