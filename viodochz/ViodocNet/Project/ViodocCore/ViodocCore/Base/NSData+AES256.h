//
//  NSData+AES256.h
//  Copyright © 2016年 . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (AES256)

-(NSData *) aes256Encrypt:(NSString *)key;
-(NSData *) aes256Decrypt:(NSString *)key;

@end
