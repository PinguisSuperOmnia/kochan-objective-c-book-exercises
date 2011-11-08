#import <Foundation/Foundation.h>
#import <stdio.h>
#import "XYPoint.h"
#import "GraphicObject.h"

@interface Rectangle: GraphicObject {
	int width;
	int height;
	XYPoint *origin;
}

-(void) setWidth: (int) w;
-(void) setHeight: (int) h;
-(void) setOrigin: (XYPoint *) pt;
-(void) setWidth: (int) w andHeight: (int) h;
-(void) translate: (XYPoint *) vector;
-(int) width;
-(int) height;
-(int) area;
-(int) perimeter;
-(XYPoint *) origin;
-(Rectangle *) intersect: (Rectangle *) rect;
-(void) draw;

@end
