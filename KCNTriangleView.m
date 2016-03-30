//
//  KCNTriangleView.m
//
//  Created by Kevin Nguy on 10/20/15.
//  Copyright © 2015 Kevin Nguy. All rights reserved.
//

#import "KCNTriangleView.h"

@implementation KCNTriangleView

- (void)drawRect:(CGRect)rect {
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextBeginPath(ctx);
    
    if (self.direction == KCNTriangleDirectionDown) {
        CGContextMoveToPoint   (ctx, CGRectGetMinX(rect), CGRectGetMinY(rect));  // top left
        CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMinY(rect));  // top right
        CGContextAddLineToPoint(ctx, CGRectGetMidX(rect), CGRectGetMaxY(rect));  // middle bottom
    } else if (self.direction == KCNTriangleDirectionLeft) {
        CGContextMoveToPoint   (ctx, CGRectGetMaxX(rect), CGRectGetMinY(rect));
        CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
        CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMidY(rect));
    } else if (self.direction == KCNTriangleDirectionRight) {
        CGContextMoveToPoint   (ctx, CGRectGetMinX(rect), CGRectGetMinY(rect));
        CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMidY(rect));
        CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect));
    } else if (self.direction == KCNTriangleDirectionUp) {
        CGContextMoveToPoint   (ctx, CGRectGetMidX(rect), CGRectGetMinY(rect));
        CGContextAddLineToPoint(ctx, CGRectGetMaxX(rect), CGRectGetMaxY(rect));
        CGContextAddLineToPoint(ctx, CGRectGetMinX(rect), CGRectGetMaxY(rect));
    }
    
    CGContextClosePath(ctx);
    CGContextSetFillColorWithColor(ctx, self.color.CGColor);
    CGContextFillPath(ctx);

}

- (instancetype)initWithFrame:(CGRect)frame {
    return [self initWithFrame:frame color:[UIColor clearColor] direction:KCNTriangleDirectionDown];
}

- (instancetype)initWithFrame:(CGRect)frame color:(UIColor *)color direction:(KCNTriangleDirection)direction {
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }
    
    self.backgroundColor = [UIColor clearColor];
    self.color = color;
    self.direction = direction;
    
    return self;
}



@end
