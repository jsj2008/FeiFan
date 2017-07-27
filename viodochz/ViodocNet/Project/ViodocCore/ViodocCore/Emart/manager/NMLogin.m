//
//  NMLogin.m
//  Copyright © 2016年 DC. All rights reserved.
//

#import "NMLogin.h"

static NMLogin* sharedLogin = nil;

@implementation NMLogin

+ (instancetype)sharedLogin
{
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedLogin = [[NMLogin alloc] init];
    });
    
    return sharedLogin;
}

@end
