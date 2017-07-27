//
//  NMLogin.h
//  EmartNetCore
//
//  Created by duanxiaochen on 2016/11/23.
//  Copyright © 2016年 DC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NMLogin : NSObject

@property (nonatomic,assign) BOOL didSignIn;
@property (nonatomic,copy) NSString *token;
@property (nonatomic,copy) NSString *signingKey;
@property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *merchantNo;
@property (nonatomic,assign) int gender;    // 1:男 0:女 -1:未知性别，设置头像是为男头像
@property (nonatomic,copy) NSString *name;  //用户姓名
@property (nonatomic,copy) NSString *phoneNo;  //手机号
@property (nonatomic,copy) NSString *patientHead;  //头像地址

+ (instancetype)sharedLogin;

@end
