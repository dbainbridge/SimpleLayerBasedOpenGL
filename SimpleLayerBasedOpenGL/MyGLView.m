//
//  MyGLView.m
//  FixView
//
//  Created by David Bainbridge on 8/30/12.
//  Copyright (c) 2012 David Bainbridge. All rights reserved.
//

#import "MyGLView.h"
#import "MyOpenGLLayer.h"

@implementation MyGLView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
        [self setWantsLayer:YES];
    }
    
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Drawing code here.
}

- (CALayer *)makeBackingLayer
{
    return [[MyOpenGLLayer alloc] init];
}
@end
