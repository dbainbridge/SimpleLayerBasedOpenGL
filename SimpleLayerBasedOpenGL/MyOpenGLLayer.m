//
//  MyOpenGLLayer.m
//  FixView
//
//  Created by David Bainbridge on 8/30/12.
//  Copyright (c) 2012 David Bainbridge. All rights reserved.
//

#import "MyOpenGLLayer.h"

@implementation MyOpenGLLayer

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        [self setNeedsDisplayOnBoundsChange:YES];
        [self setAsynchronous:YES];
    }
    
    return self;

}

- (BOOL)canDrawInOpenGLContext:(NSOpenGLContext *)context pixelFormat:(NSOpenGLPixelFormat *)pixelFormat forLayerTime:(CFTimeInterval)timeInterval displayTime:(const CVTimeStamp *)timeStamp
{
    return YES;
}

- (void)drawInOpenGLContext:(NSOpenGLContext *)context pixelFormat:(NSOpenGLPixelFormat *)pixelFormat forLayerTime:(CFTimeInterval)timeInterval displayTime:(const CVTimeStamp *)timeStamp
{
    glClearColor(.0f, .0f, .0f, 1.0f);
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glEnableClientState(GL_VERTEX_ARRAY);
    glColor3f(1.0f, 0.85f, 0.35f);
    glBegin(GL_POLYGON);
    {
        glVertex3f(  0.0,  0.6, 0.0);
        glVertex3f( -0.2, -0.3, 0.0);
        glVertex3f(  0.2, -0.3 ,0.0);
    }
    glEnd();

}
@end
