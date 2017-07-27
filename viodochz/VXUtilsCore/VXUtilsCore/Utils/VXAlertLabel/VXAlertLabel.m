//
//  VXAlertLabel.m
//  AlertLabelDemo
//
//  Created by viodoc on 15/6/3.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import "VXAlertLabel.h"

#define VXAlertLabelFont        15.0
#define VXAlertLabelWidthSpace  40.0
#define VXAlertLabelHeightSpace 20.0
#define VXAlertLabelMinShowTime 2.0
#define VXAlertLabelReadSpeed   20.0

@interface VXAlertLabel ()

@property (strong, nonatomic) UIView  *backView;
@property (strong, nonatomic) UILabel *label;
@property (strong, nonatomic) UIWindow *vxAlertLabelWindow;
@end

@implementation VXAlertLabel

static VXAlertLabel *alertLabel = nil;

+ (instancetype)sharedAlertLabel {
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        alertLabel                                 = [[VXAlertLabel alloc]init];

        alertLabel.backView                        = [[UIView alloc]init];
        alertLabel.backView.backgroundColor        = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.7];
        alertLabel.backView.layer.cornerRadius     = 5.0;
        alertLabel.backView.clipsToBounds          = YES;
        alertLabel.backView.hidden                 = YES;
        alertLabel.backView.userInteractionEnabled = NO;

        alertLabel.label                           = [[UILabel alloc]init];
        alertLabel.label.backgroundColor           = [UIColor clearColor];
        alertLabel.label.textColor                 = [UIColor whiteColor];
        alertLabel.label.textAlignment             = NSTextAlignmentCenter;
        alertLabel.label.font                      = [UIFont systemFontOfSize:VXAlertLabelFont];
        alertLabel.label.numberOfLines             = 0;
        alertLabel.label.lineBreakMode             = NSLineBreakByCharWrapping;
        alertLabel.label.userInteractionEnabled    = NO;
        
        [alertLabel.backView addSubview:alertLabel.label];
        
        if (alertLabel.vxAlertLabelWindow == nil) {
            alertLabel.vxAlertLabelWindow = [[UIWindow alloc] init];
            alertLabel.vxAlertLabelWindow.tag = kAlertLabelTag;
            alertLabel.vxAlertLabelWindow.backgroundColor = [UIColor clearColor];
            alertLabel.vxAlertLabelWindow.windowLevel = UIWindowLevelNormal;
            alertLabel.vxAlertLabelWindow.hidden = NO;
            alertLabel.vxAlertLabelWindow.alpha = 1.0;
            alertLabel.vxAlertLabelWindow.bounds = CGRectMake(0, (ScreenHeight-VXAlertLabelHeightSpace)/2, ScreenWidth, VXAlertLabelHeightSpace);
            alertLabel.vxAlertLabelWindow.center = [UIApplication sharedApplication].keyWindow.center;
            alertLabel.vxAlertLabelWindow.userInteractionEnabled = YES;
            [alertLabel.vxAlertLabelWindow makeKeyAndVisible];
            [alertLabel.vxAlertLabelWindow addSubview:alertLabel.backView];
        }
        
    });
    
    return alertLabel;
}

- (void)showAlertLabelWithAlertString:(NSString *)alertString {
    
    if (alertString.length < 1) {
        return;
    }
    
    NSTimeInterval showTime = alertString.length/VXAlertLabelReadSpeed;
    if (showTime < VXAlertLabelMinShowTime) {
        showTime = VXAlertLabelMinShowTime;
    }
    
    _label.text         = alertString;
    CGRect aStringRect  = [self getStringWidthWithString:alertString font:[UIFont systemFontOfSize:VXAlertLabelFont]];
    
    _backView.hidden    = NO;
    _backView.frame    = CGRectMake(0, 0, aStringRect.size.width + VXAlertLabelWidthSpace, aStringRect.size.height + VXAlertLabelHeightSpace);

    alertLabel.vxAlertLabelWindow.hidden = NO;
    alertLabel.vxAlertLabelWindow.bounds = _backView.bounds;
    _backView.transform = CGAffineTransformMakeScale(0.8, 0.8);
    
    _label.frame = CGRectMake(VXAlertLabelWidthSpace/2, VXAlertLabelHeightSpace/2, _backView.bounds.size.width - VXAlertLabelWidthSpace, _backView.bounds.size.height - VXAlertLabelHeightSpace);
    

    [UIView animateWithDuration:0.2 delay:0 usingSpringWithDamping:10 initialSpringVelocity:15 options:UIViewAnimationOptionCurveLinear animations:^{
        
        _backView.transform = CGAffineTransformMakeScale(1, 1);
    } completion:^(BOOL finished) {
        
        [VXAlertLabel cancelPreviousPerformRequestsWithTarget:self];
        [self performSelector:@selector(alertLabelHidden) withObject:nil afterDelay:showTime];
    }];
}

- (void)hideAlertLabeImmediatelyIfShowing {
    
    alertLabel.vxAlertLabelWindow.hidden = YES;
}

- (void)alertLabelHidden {
    
    alertLabel.vxAlertLabelWindow.hidden = YES;
    [UIView animateWithDuration:0.1 animations:^{
        _backView.alpha = 0;
    } completion:^(BOOL finished) {
        
        _backView.hidden = YES;
        _backView.alpha  = 1;
    }];
}

- (CGRect)getStringWidthWithString:(NSString *)aString font:(UIFont *)aFont {
    
    NSDictionary *attributes = [NSDictionary dictionaryWithObject:aFont forKey:NSFontAttributeName];
    
    CGSize stringSize  = CGSizeMake(ScreenWidth - (VXAlertLabelWidthSpace*2) , MAXFLOAT);
    
    CGRect aStringRect = [aString boundingRectWithSize:stringSize
                                               options:NSStringDrawingUsesLineFragmentOrigin
                                            attributes:attributes
                                               context:nil];
    
    return aStringRect;
}

@end
