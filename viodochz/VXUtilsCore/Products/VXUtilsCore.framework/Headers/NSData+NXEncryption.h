//
//  NSData+NXEncryption.h
//  viodoc
//
//  Created by viodoc on 1/14/16.
//  Copyright © 2016 viodoc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (NXEncryption)

- (NSData *)AES256EncryptWithKey:(NSString *)key;

- (NSData *)AES256DecryptWithKey:(NSString *)key;

- (NSString *)newStringInBase64FromData;

+ (NSString*)base64encode:(NSString*)str;



@end
