//
//  StretchView.m
//  ImageFun
//
//  Created by namhyun on 2015. 12. 29..
//  Copyright © 2015년 2Fworkshop. All rights reserved.
//

#import "StretchView.h"

@implementation StretchView

-(id)initWithFrame:(NSRect)rect {
    if (![super initWithFrame:rect])
        return nil;

    srandom((unsigned int)time(NULL));
    
    path = [[NSBezierPath alloc] init];
    [path setLineWidth:3.0];
    NSPoint p = [self randomPoint];
    [path moveToPoint:p];
    int i;
    for (i = 0; i < 15; i++) {
        p = [self randomPoint];
        [path lineToPoint:p];
    }
    
    [path closePath];
    
    return self;
}


-(NSPoint)randomPoint {
    NSPoint result;
    NSRect r = [self bounds];
    result.x = r.origin.x + random() % (int)r.size.width;
    result.y = r.origin.y + random() % (int)r.size.height;
    return result;
}

-(void)drawRect:(NSRect)Rect {
    NSRect bounds = [self bounds];
    
    [[NSColor greenColor] set];
    [NSBezierPath fillRect: bounds];
    
    [[NSColor blackColor] set];
    [path stroke];
}

@end
