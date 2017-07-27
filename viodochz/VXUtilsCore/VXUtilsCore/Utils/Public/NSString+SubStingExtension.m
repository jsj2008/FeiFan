//
//  NSString+Extension_NSString.m
//  viodoc
//
//  Created by viodoc on 16/10/21.
//  Copyright © 2016年 viodoc. All rights reserved.
//

#import "NSString+SubStingExtension.h"

@implementation NSString (Extension_NSString)

// 截取字符串方法封装
// 截取字符串方法封装
- (NSString *)subStringFrom:(NSString *)startString to:(NSString *)endString {
    
    NSRange startRange = [self rangeOfString:startString];
    NSRange endRange = [self rangeOfString:endString];
    NSRange range = NSMakeRange(startRange.location + startRange.length, endRange.location - startRange.location - startRange.length);
    return [self substringWithRange:range];
    
}

@end
