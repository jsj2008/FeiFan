//
//  NXProgressCircleView.h
//  progressView
//
//  Created by sunyw on 4/3/15.
//  Copyright (c) 2015 sunyw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NXProgressCircleView : UIView

@property (nonatomic, assign) BOOL isAnimating;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, assign) BOOL hasGlow;
@property (nonatomic, assign) float speed;

+(NXProgressCircleView*)circleWithColor:(UIColor*)color width:(CGFloat)width;

@end
