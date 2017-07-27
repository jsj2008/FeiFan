//
//  NXBottompopView.h
//  Niox
//
//  Created by 侯明和 on 15/12/25.
//  Copyright © 2015年 neusoft. All rights reserved.
//  底部弹出窗口

#import <UIKit/UIKit.h>

@protocol NXBottompopViewDelegate <NSObject>

- (void)selectIndex:(NSInteger)index;

@end

@interface NXBottompopView : UIView

@property (nonatomic,assign) NSInteger selectIndex;
@property (nonatomic,assign) id<NXBottompopViewDelegate>delegate;

- (id)initWithTitleArray:(NSArray *)titleArray;


- (void)show;

@end

