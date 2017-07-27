//
//  NXRefreshNormalHeader.h
//  Niox
//
//  Created by zhuenkai on 15/8/7.
//  Copyright (c) 2015年 neusoft. All rights reserved.
//

#import "MJRefreshStateHeader.h"

@interface NXRefreshNormalHeader : MJRefreshStateHeader
@property (weak, nonatomic, readonly) UIImageView *arrowView;
/** 菊花的样式 */
@property (assign, nonatomic) UIActivityIndicatorViewStyle activityIndicatorViewStyle;

@end
