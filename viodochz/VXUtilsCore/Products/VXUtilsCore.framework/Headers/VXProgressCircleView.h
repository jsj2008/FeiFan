//
//  VXProgressCircleView.h
//  progressView
//
//  Created by viodoc on 4/3/15.
//  Copyright (c) 2015 viodoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VXProgressCircleView : UIView

@property (nonatomic, assign) BOOL isAnimating;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) BOOL hasGlow;
@property (nonatomic, assign) float speed;

+(VXProgressCircleView*)circleWithColor:(UIColor*)color width:(CGFloat)width;

@end
