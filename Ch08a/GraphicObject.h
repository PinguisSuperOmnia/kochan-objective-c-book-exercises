
#import <Foundation/Foundation.h>

@interface GraphicObject : NSObject {
	int fillColor; // 32-bit color
	BOOL filled; // Is the object filled?
	int lineColor; // 32-bit line color
}

-(void) setFillColor: (int) fc;
-(void) setFilled: (BOOL) f;
-(void) setLineColor: (int) lc;
-(int) fillColor;
-(BOOL) filled;
-(int) lineColor;

@end
