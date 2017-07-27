//
//  NXLogin.m
//  Copyright (c) 2015年 . All rights reserved.
//

#import "NXLogin.h"
#import "AMDBHelper.h"

static AMMGesUserInfo* currentUserInfo = nil;
static NXLogin* sharedNXLogin = nil;

@implementation NXLogin

- (instancetype)init {
    self = [super init];
    if (self) {
    }
    return self;
}

+ (instancetype)sharedNXLogin
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedNXLogin = [[NXLogin alloc] init];
    });
    
    return sharedNXLogin;
}

+ (BOOL) isLogin {
    if (currentUserInfo) {
        return NO;
    }
    return YES;
}

+ (void) doLogin:(AMMGesUserInfo *)loginData success:(void(^)(AMMGesUserInfo *model))successBlock failure:(void(^)())failureBlock {
    
    if (loginData) {
        [NXLogin sharedNXLogin].didSignIn    = YES;
        [NXLogin sharedNXLogin].token        = loginData.token;
        [NXLogin sharedNXLogin].signingKey   = loginData.signingKey;
        [NXLogin sharedNXLogin].userId       = loginData.userId;
        [NXLogin sharedNXLogin].patientId    = loginData.patientId;
        [AMDBHelper replaceUserInfo:loginData];
        successBlock(loginData);
    } else {
        AMMGesUserInfo *userInfo = [AMDBHelper getCurrentUserInfo];
        if(userInfo) {
            [NXLogin sharedNXLogin].didSignIn    = YES;
            [NXLogin sharedNXLogin].token        = userInfo.token;
            [NXLogin sharedNXLogin].signingKey   = userInfo.signingKey;
            [NXLogin sharedNXLogin].userId       = userInfo.userId;
            [NXLogin sharedNXLogin].patientId    = userInfo.patientId;
        } else {
            [NXLogin sharedNXLogin].didSignIn    = NO;
        }
        successBlock(userInfo);
    }
    
    
}

+ (void) doLogout:(void(^)(AMMGesUserInfo *model))successBlock {
    
    [AMDBHelper deleteUserInfo];
    [NXLogin sharedNXLogin].didSignIn    = NO;
    [NXLogin sharedNXLogin].token        = @"";
    [NXLogin sharedNXLogin].signingKey   = @"";

}

+ (void)tagsAliasCallback:(int)iResCode
                     tags:(NSSet *)tags
                    alias:(NSString *)alias {
    
}

@end
