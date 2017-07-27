//
//  NSString+JudgementLawfulLogic.h
//  Anymed
//
//  Created by viodoc on 15/3/26.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString(NSString_JudgementLawfulLogic)

//手机号是否合法
- (BOOL)isLawfulPhoneNumber;

//身份证是否合法
- (BOOL)isLawfulIdNumber;

//身份证是男的吗
- (BOOL)isMan;

-(NSString *)birthdayStrFromIdentityCard;

/**钱的属性字符串*/
- (NSMutableAttributedString *)attributedStringWithDecimalBeforeFontSize:(float)beforeFontSize
                                                           afterFontSize:(float)afterFontSize
                                                         beforeFontColor:(UIColor *)beforeFontColor
                                                         afterFontColor:(UIColor *)afterFontColor;

/**钱的属性字符串带￥符号的*/
- (NSMutableAttributedString *)attributedStringWithDecimalAndMarkBeforeFontSize:(float)beforeFontSize
                                                                  afterFontSize:(float)afterFontSize
                                                                beforeFontColor:(UIColor *)beforeFontColor
                                                                 afterFontColor:(UIColor *)afterFontColor;

- (NSMutableAttributedString *)attributedStringWithDecimalBeforeFontSize:(float)beforeFontSize
                                                           afterFontSize:(float)afterFontSize;

//安全字符串
- (NSString *)safetyStringWithAfterRangeLength:(NSInteger)afterLengthNumber
                             beforeRangeLength:(NSInteger)beforeRangeNumber;

- (NSMutableAttributedString *)highlightKeyWordAttributedString:(NSString *)message
                                                        keyWord:(NSString *)keyWord;
@end
