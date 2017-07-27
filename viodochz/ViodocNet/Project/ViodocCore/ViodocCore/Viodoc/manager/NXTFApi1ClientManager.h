//
//  NXTFApi1ClientManager.h
//  Copyright (c) 2015 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViodocCoreHeader.h"

@interface NXTFApi1ClientManager : NSObject

@property (copy ,nonatomic) NSString *commonSignature;

@property (nonatomic, strong) NSOperationQueue *asyncQueue;
@property (nonatomic, strong) NSOperationQueue *sslQueue;
@property (nonatomic, strong) NSOperationQueue *filesQueue;
@property (nonatomic, strong) NSMutableArray *theConnectTimerArray;

+ (instancetype)sharedTFApi1Client;
+ (NXTFReqHeader *)getHeader:(BOOL)needToken;
- (void)addToQuene:(NSObject *)req selName:(NSString *)selName success:(void(^)(id content))successBlock failure:(void(^)(NSError *error))failureBlock;

- (void)addToSSlQuene:(NSObject *)req selName:(NSString *)selName success:(void(^)(id content))successBlock failure:(void(^)(NSError *error))failureBlock;

- (void)addMsgToQuene:(NSObject *)req selName:(NSString *)selName messageID:(NSString *)messageID success:(void(^)(id content))successBlock failure:(void(^)(NSError *error))failureBlock;

@end
