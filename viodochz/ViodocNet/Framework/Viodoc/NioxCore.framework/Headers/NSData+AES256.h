//
//  NSData+AES256.h
//  NioxNetworkApi
//
//  Created by sunyw on 16/3/3.
//  Copyright © 2016年 neusoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES256)

-(NSData *) aes256Encrypt:(NSString *)key;
-(NSData *) aes256Decrypt:(NSString *)key;

@end
