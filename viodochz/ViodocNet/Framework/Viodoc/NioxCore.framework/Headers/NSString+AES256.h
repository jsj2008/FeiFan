//
//  NSString+AES256.h
//  NioxNetworkApi
//
//  Created by sunyw on 16/3/3.
//  Copyright © 2016年 neusoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+AES256.h"

@interface NSString (AES256)

-(NSString *) aes256Encrypt:(NSString *)key;
-(NSString *) aes256Decrypt:(NSString *)key;

@end
