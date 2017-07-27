//
//  NioxLog.h
//  Niox
//
//  Created by sunyw on 15/8/4.
//  Copyright (c) 2015年 neusoft. All rights reserved.
//

#import <Foundation/Foundation.h>

#define NSLog(args...) _Log(@"DEBUG ", __FILE__,__LINE__,__PRETTY_FUNCTION__,args);


@interface NioxLog : NSObject

void _Log(NSString *prefix, const char *file, int lineNumber, const char *funcName, NSString *format,...);

@end
