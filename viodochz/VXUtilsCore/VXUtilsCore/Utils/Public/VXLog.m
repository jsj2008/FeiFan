//
//  VXLog.m
//  viodoc
//
//  Created by viodoc on 15/8/4.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import "VXLog.h"

@implementation VXLog

void _Log(NSString *prefix, const char *file, int lineNumber, const char *funcName, NSString *format,...) {
    va_list ap;
    va_start (ap, format);
    format = [format stringByAppendingString:@"\n"];
    NSString *msg = [[NSString alloc] initWithFormat:[NSString stringWithFormat:@"%@",format] arguments:ap];
    va_end (ap);
    fprintf(stderr,"%s%50s:%3d - %s",[prefix UTF8String], funcName, lineNumber, [msg UTF8String]);
}

@end
