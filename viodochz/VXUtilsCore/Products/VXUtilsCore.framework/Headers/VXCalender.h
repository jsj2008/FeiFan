//
//  VXCalender.h
//  calander
//
//  Created by viodoc on 15/12/15.
//  Copyright © 2015年 viodoc. All rights reserved.
//  日历控件

#import <UIKit/UIKit.h>
@protocol VXCalenderDelegate <NSObject>

//选择的日期
- (void)selectWithDate:(NSDate *)date;

@end

@interface VXCalender : UIView

@property (nonatomic ,assign) id<VXCalenderDelegate>delegate;
@property (nonatomic ,strong) NSDate *selectDate;

- (instancetype)initWithFrame:(CGRect)frame dataArr:(NSArray *)dataArr;

@end

