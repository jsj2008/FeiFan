//
//  UIView+XYLayout.h
//  MSSBrowse
//
//  Created by xuyue on 16/8/8.
//  Copyright © 2016年 neusoft_xy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XYLayout)

- (CGFloat)mssLeft;
- (CGFloat)mssRight;
- (CGFloat)mssBottom;
- (CGFloat)mssTop;
- (CGFloat)mssHeight;
- (CGFloat)mssWidth;

- (void)setMssX:(CGFloat)mssX;
- (void)setMssY:(CGFloat)mssY;
- (void)setMssWidth:(CGFloat)mssWidth;
- (void)setMssHeight:(CGFloat)mssHeight;

- (void)mss_setFrameInSuperViewCenterWithSize:(CGSize)size;

@end
