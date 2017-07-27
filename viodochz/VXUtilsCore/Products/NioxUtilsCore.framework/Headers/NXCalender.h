//
//  NXCalender.h
//  calander
//
//  Created by 侯明和 on 15/12/15.
//  Copyright © 2015年 Niox. All rights reserved.
//  日历控件

#import <UIKit/UIKit.h>
@protocol NXCalenderDelegate <NSObject>

//选择的日期
- (void)selectWithDate:(NSDate *)date;

@end

@interface NXCalender : UIView

@property (nonatomic ,assign) id<NXCalenderDelegate>delegate;
@property (nonatomic ,strong) NSDate *selectDate;

- (instancetype)initWithFrame:(CGRect)frame dataArr:(NSArray *)dataArr;

@end

