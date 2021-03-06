//
//  VXQueryAuthorizationStatus.h
//  viodocDoctor
//
//  Created by viodoc on 16/5/20.
//  Copyright © 2016年 viodoc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VXQueryAuthorizationStatus : NSObject

/** 获得访问用户相机授权状态 */ 
+ (BOOL)getPhotoAuthStatus;

/**
 获得访问用户相机授权状态 若首次请求授权 APP将主动请求请求授权并获得授权状态
 @param state   授权状态
 @param isFirst APP是否首次请求授权
 */
+ (void)getPhotoAuthStatus:(void(^)(BOOL isAllow))state isFirst:(void(^)(BOOL isFirst))isFirst;

/** 获得访问用户相册授权状态 */ 
+ (BOOL)getPhotoAlbumAuthStatus;


/**
 获得通讯录访问权限

 @param state 是否有权限
 */
+ (void)getAddressBook:(void (^)(BOOL isSucc))state;

@end
