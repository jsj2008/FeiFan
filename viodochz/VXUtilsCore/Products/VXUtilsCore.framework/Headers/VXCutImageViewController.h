//
//  VXCutImageViewController.h
//  viodoc
//
//  Created by viodoc on 16/3/8.
//  Copyright © 2016年 viodoc. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VXCutImageViewController;

@protocol VXCutImageViewControllerDelegate <NSObject>

- (void)imageCropper:(VXCutImageViewController *)cropperViewController didFinished:(UIImage *)editedImage;
- (void)imageCropperDidCancel:(VXCutImageViewController *)cropperViewController;

@end


@interface VXCutImageViewController : UIViewController

@property (nonatomic, assign) NSInteger tag;
@property (nonatomic,   weak) id<VXCutImageViewControllerDelegate> delegate;
@property (nonatomic, assign) CGRect cropFrame;

- (instancetype)initWithImage:(UIImage *)originalImage cropFrame:(CGRect)cropFrame limitScaleRatio:(NSInteger)limitRatio;

@end
