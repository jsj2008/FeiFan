//
//  VXRefreshNormalHeader.h
//  viodoc
//
//  Created by viodoc on 15/8/7.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import "MJRefreshStateHeader.h"

@interface VXRefreshNormalHeader : MJRefreshStateHeader
@property (weak, nonatomic, readonly) UIImageView *arrowView;
/** 菊花的样式 */
@property (assign, nonatomic) UIActivityIndicatorViewStyle activityIndicatorViewStyle;

@end
