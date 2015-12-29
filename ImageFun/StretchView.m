//
//  StretchView.m
//  ImageFun
//
//  Created by namhyun on 2015. 12. 29..
//  Copyright © 2015년 2Fworkshop. All rights reserved.
//

#import "StretchView.h"

@implementation StretchView

-(void)drawRect:(NSRect)Rect {
    NSRect bounds = [self bounds];
    [[NSColor greenColor] set];
    [NSBezierPath fillRect:bounds];
}

@end
