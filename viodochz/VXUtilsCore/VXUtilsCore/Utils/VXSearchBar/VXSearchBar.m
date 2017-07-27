//
//  VXSearchBar.m
//  viodoc
//
//  Created by viodoc on 15/7/3.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import "VXSearchBar.h"

@implementation VXSearchBar

- (void)awakeFromNib {
    [super awakeFromNib];
    UIColor *color = [UIColor colorWithRed:0xf2/255.0 green:0xf2/255.0  blue:0xf2/255.0  alpha:1.0];
    self.barTintColor = color;
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = 0.5;
    
    [self setImage:[UIImage imageNamed:@"searchMagnifier"]
  forSearchBarIcon:UISearchBarIconSearch
             state:UIControlStateNormal];
}


@end
