//
//  UnderLineTextField.m
//  Anymed
//
//  Created by viodoc on 15/6/10.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import "UnderLineTextField.h"

@implementation UnderLineTextField

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)setColor:(UIColor *)color{
    self.lineColor = color;
    [self setNeedsDisplay];
}


- (void) drawRect:(CGRect)rect {

    if ([self.lineColor isKindOfClass:[UIColor class]]) {
        CGContextRef context = UIGraphicsGetCurrentContext();
        CGContextSetFillColorWithColor(context, self.lineColor.CGColor);
        CGContextFillRect(context, CGRectMake(0,
                                              CGRectGetHeight(self.frame) - 0.5,
                                              CGRectGetWidth(self.frame),
                                              0.5));
    }
}


@end
