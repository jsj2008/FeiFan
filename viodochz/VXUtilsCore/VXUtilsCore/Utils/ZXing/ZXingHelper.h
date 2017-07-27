//
//  ZXingHelper.h
//  Anymed
//
//  Created by viodoc on 15/5/21.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZXingHelper : NSObject

+ (ZXingHelper *)sharedInstance;

// 生成条形码图片
- (UIImage *)getBarCodeImageByCode:(NSString *)code width:(CGFloat)width height:(CGFloat)height;

// 生成二维码码图片
- (UIImage *)getQRCodeImageByCode:(NSString *)code width:(CGFloat)width height:(CGFloat)height;

@end
