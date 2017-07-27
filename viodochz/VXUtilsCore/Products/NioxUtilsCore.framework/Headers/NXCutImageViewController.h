//
//  NXCutImageViewController.h
//  Niox
//
//  Created by 侯明和 on 16/3/8.
//  Copyright © 2016年 neusoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NXCutImageViewController;

@protocol NXCutImageViewControllerDelegate <NSObject>

- (void)imageCropper:(NXCutImageViewController *)cropperViewController didFinished:(UIImage *)editedImage;
- (void)imageCropperDidCancel:(NXCutImageViewController *)cropperViewController;

@end


@interface NXCutImageViewController : UIViewController

@property (nonatomic, assign) NSInteger tag;
@property (nonatomic,   weak) id<NXCutImageViewControllerDelegate> delegate;
@property (nonatomic, assign) CGRect cropFrame;

- (instancetype)initWithImage:(UIImage *)originalImage cropFrame:(CGRect)cropFrame limitScaleRatio:(NSInteger)limitRatio;

@end
