//
//  NSString+AES256.h
//  Copyright © 2016年 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSData+AES256.h"

@interface NSString (AES256)

-(NSString *) aes256Encrypt:(NSString *)key;
-(NSString *) aes256Decrypt:(NSString *)key;

@end
