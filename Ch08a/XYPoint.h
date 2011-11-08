#import <Foundation/Foundation.h>

@interface XYPoint: NSObject
{
	int x, y;
}

-(void) setX: (int) myX;
-(void) setY: (int) myY;
-(void) setX: (int) xVal andY: (int) yVal;
-(int) x;
-(int) y;

@end
