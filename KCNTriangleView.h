//
//  KCNTriangleView.h
//
//  Created by Kevin Nguy on 10/20/15.
//  Copyright © 2015 Kevin Nguy. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, KCNTriangleDirection) {
    KCNTriangleDirectionLeft,
    KCNTriangleDirectionRight,
    KCNTriangleDirectionUp,
    KCNTriangleDirectionDown
};

@interface KCNTriangleView : UIView

- (instancetype)initWithFrame:(CGRect)frame color:(UIColor *)color direction:(KCNTriangleDirection)direction;

@property (nonatomic, strong) UIColor *color;
@property (nonatomic) KCNTriangleDirection direction;

@end
