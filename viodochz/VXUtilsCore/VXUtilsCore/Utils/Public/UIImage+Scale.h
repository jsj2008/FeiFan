//
//  UIImage+Scale.h
//  viodoc
//
//  Created by viodoc on 16/8/9.
//  Copyright © 2016年 viodoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Scale)

- (CGRect)getBigImageRectSizeWithScreenWidth:(CGFloat)screenWidth screenHeight:(CGFloat)screenHeigh;

/**
 *  等比例放缩图片
 *
 *  @param size 需要的最大尺寸
 *
 *  @return 放缩后的图片
 */
- (UIImage*)scaleToSize:(CGSize)size;


/**
 图片放缩到固定宽度

 @param defineWidth 需要放缩后的宽度
 @return 放缩后的图片
 */
- (UIImage *) imageCompressWithTargetWidth:(CGFloat)defineWidth;


@end
