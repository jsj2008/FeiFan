//
//  VXBottompopView.h
//  viodoc
//
//  Created by viodoc on 15/12/25.
//  Copyright © 2015年 viodoc. All rights reserved.
//  底部弹出窗口

#import <UIKit/UIKit.h>

@protocol VXBottompopViewDelegate <NSObject>

- (void)selectIndex:(NSInteger)index;

@end

@interface VXBottompopView : UIView

@property (nonatomic,assign) NSInteger selectIndex;
@property (nonatomic,assign) id<VXBottompopViewDelegate>delegate;

- (id)initWithTitleArray:(NSArray *)titleArray;


- (void)show;

@end

