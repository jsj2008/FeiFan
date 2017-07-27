//
//  NXTFApi1ClientManager.m
//  Copyright (c) 2015 . All rights reserved.
//

#import "NMEmartClientManager.h"
#import "NSString+SHA.h"
#import <UIKit/UIKit.h>
#import "ViodocCoreHeader.h"
#import "NMLogin.h"
#import "TSSLSocketClient.h"
#import "TCompactProtocol.h"
#import "TSocketClient.h"
#import "NotificationKeyHeader.h"

static NMEmartClientManager * _sharedTFApi1ClientManager;

@implementation NMEmartClientManager


+ (instancetype)sharedClient {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{

        _sharedTFApi1ClientManager = [[NMEmartClientManager alloc] init];
        _sharedTFApi1ClientManager.commonSignature = @"P35HLlPHsNQYlecJCKpSw8dSXCpR1XhlFrqsgj3z09jiBn3DXV9N9hW6ConRBr+x";
        _sharedTFApi1ClientManager.theConnectTimerArray = [NSMutableArray arrayWithCapacity:3];
    });
    
    return _sharedTFApi1ClientManager;
}

+ (NMTFReqHeader *)getHeader:(BOOL)needToken {
    
    NMTFReqHeader *header = [[NMTFReqHeader alloc] init];
    
    UInt64 timestamp = [[NSDate date] timeIntervalSince1970]*1000;
    NSString* nonce = [[NMEmartClientManager sharedClient] getNonce];
    NSString *salt = [nonce substringFromIndex:timestamp % 10];
    
    
    NSString *sKeyandTime = @"";
    if ([NMLogin sharedLogin].didSignIn) {
        if (needToken) {
            [header setToken:[NMLogin sharedLogin].token];
            sKeyandTime = [NSString stringWithFormat:@"%@%llu%@%@",[NMLogin sharedLogin].signingKey,timestamp,nonce,salt];
        } else {
            sKeyandTime = [NSString stringWithFormat:@"%@%llu%@%@",[NMEmartClientManager sharedClient].commonSignature,timestamp,nonce,salt];
        }
        if ([NMLogin sharedLogin].userId.length>0) {
            [header setUserId:[NMLogin sharedLogin].userId.intValue];
        }
    } else {
        sKeyandTime = [NSString stringWithFormat:@"%@%llu%@%@",[NMEmartClientManager sharedClient].commonSignature,timestamp,nonce,salt];
    }
    
    NSString *sha256String = [sKeyandTime sha256];
    
    [header setSignature:sha256String];
    [header setNonce:nonce];
    [header setAppType:2];
    [header setAppVersion:[NMEmartClientManager sharedClient].appVersion];
    [header setTimestamp:timestamp];
    [header setDevice:[NMEmartClientManager getDeviceInfos]];
    
    return header;
}

+ (NMTFDevice*)getDeviceInfos {
    
    
    NMTFDevice *tfDevice = [[NMTFDevice alloc] init];
    
    UIDevice *device = [[UIDevice alloc] init];
    
    tfDevice.deviceName = device.model;
    tfDevice.osName = device.systemVersion;
    
    return tfDevice;
    
}


- (NSString*) getNonce {
    
    CFUUIDRef uuidObj = CFUUIDCreate(nil);
    NSString *uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuidObj);
    
    CFRelease(uuidObj);
    
    uuidString = [uuidString stringByReplacingOccurrencesOfString:@"-" withString:@""];
    return uuidString;
    
}

- (NSOperation *)addOperationWithBlock:(void (^)(NSOperation *operation))block queue:(NSOperationQueue*)queue timeout:(CGFloat)timeout timeoutBlock:(void (^)(void))timeoutBlock
{
    NSBlockOperation *blockOperation = [[NSBlockOperation alloc] init];
    NSBlockOperation __weak *weakOperation = blockOperation;
    
    [blockOperation addExecutionBlock:^{
        block(weakOperation);
    }];
    
    [queue addOperation:blockOperation];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(timeout * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        if (weakOperation && ![weakOperation isFinished]) {
            [weakOperation cancel];
            if (timeoutBlock) {
                timeoutBlock();
            }
        }
    });
    
    return blockOperation;
}


- (void)addToQuene:(NSObject *)req selName:(NSString *)selName success:(void(^)(id content))successBlock failure:(void(^)(NSError *error))failureBlock {
    
    if ([NMEmartClientManager sharedClient].asyncQueue == nil) {
        [NMEmartClientManager sharedClient].asyncQueue       = [[NSOperationQueue alloc] init];
        [NMEmartClientManager sharedClient].asyncQueue.name  = @"common async Queue";
        [NMEmartClientManager sharedClient].asyncQueue.maxConcurrentOperationCount = 3;
    }

    __block TSSLSocketClient *tSocketClient = nil;
    
    [[NMEmartClientManager sharedClient] addOperationWithBlock:^(NSOperation *operation) {

        @try {
            
            tSocketClient = [[TSSLSocketClient alloc] initWithHostname:[NMEmartClientManager sharedClient].host port:[NMEmartClientManager sharedClient].port];
            if(tSocketClient == nil) {
                
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    NSError *error = [[NSError alloc] initWithDomain:@"连接超时，请检查网络或稍后再试。" code:-1015 userInfo:nil];
                    failureBlock(error);
                }];
                return;
            }
            TCompactProtocol *protocol = [[TCompactProtocol alloc] initWithTransport:tSocketClient];
            
            NMTFEmartClient *tFApi1Client = [[NMTFEmartClient alloc] initWithProtocol:protocol];
            
            SEL dosel = NSSelectorFromString(selName);
            
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            
            if ([tFApi1Client respondsToSelector:dosel]) {
                
                NSObject *resp =  [tFApi1Client performSelector:dosel withObject:req];
                if (resp) {
                    
                    NMTFRespHeader * header = [resp performSelector:@selector(header) withObject:nil];
                    if ([header isKindOfClass:[NMTFRespHeader class]]) {
                        if (header.status == 0) {
                            
                            if (tSocketClient) {
                                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                    successBlock(resp);
                                }];
                            }
                            
                        } else {
                            
                            if (tSocketClient) {
                                if (header.status == -3 || header.status == -4) {
                                    if (header.msg.length == 0) {
                                        header.msg = @"服务器返回错误";
                                    }
                                    NSError *error = [[NSError alloc] initWithDomain:header.msg code:header.status userInfo:nil];
                                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                        [[NSNotificationCenter defaultCenter] postNotificationName:LOGOUT_NXLogoutNotification object:self];
                                        failureBlock(error);
                                    }];
                                } else {
                                    
                                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                        if (header.msg.length == 0) {
                                            header.msg = @"服务器返回错误";
                                        }
                                        NSError *error = [[NSError alloc] initWithDomain:header.msg code:header.status userInfo:nil];
                                        failureBlock(error);
                                    }];
                                }

                            }
                            
                        }
                    } else {
                        [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                            NSError *error = [[NSError alloc] initWithDomain:@"返回header有错误" code:-6020 userInfo:nil];
                            failureBlock(error);
                        }];
                    }
                } else {
                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                        NSError *error = [[NSError alloc] initWithDomain:@"返回类型错误" code:-6016 userInfo:nil];
                        failureBlock(error);
                    }];
                }
            } else {
                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                    NSError *error = [[NSError alloc] initWithDomain:@"执行请求错误" code:-6017 userInfo:nil];
                    failureBlock(error);
                }];
            }
            
#pragma clang diagnostic pop
            
        }
        @catch (NSException *e) {
            
            if (tSocketClient) {
                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                    NSError *error = [[NSError alloc] initWithDomain:@"无法连接到服务器，请检查网络或稍后再试。" code:-1015 userInfo:nil];
                    failureBlock(error);
                }];
            }

        }
        @finally {
            if (tSocketClient) {
                [tSocketClient.mInput close];
                [tSocketClient.mOutput close];
                tSocketClient = nil;
            }
        }
        
    }  queue:[NMEmartClientManager sharedClient].asyncQueue timeout:60 timeoutBlock:^{
        
        [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
            NSError *error = [[NSError alloc] initWithDomain:@"无法连接到服务器，请检查网络或稍后再试。" code:-1015 userInfo:nil];
            failureBlock(error);
        }];
    }];
  
}

- (void) addToSSlQuene:(NSObject *)req selName:(NSString *)selName success:(void(^)(id content))successBlock failure:(void(^)(NSError *error))failureBlock {
    
    if ([NMEmartClientManager sharedClient].sslQueue == nil) {
        [NMEmartClientManager sharedClient].sslQueue       = [[NSOperationQueue alloc] init];
        [NMEmartClientManager sharedClient].sslQueue.name  = @"ssl Queue";
        [NMEmartClientManager sharedClient].sslQueue.maxConcurrentOperationCount = 3;
    }
    
    __block TSSLSocketClient *tSSLSocketClient = nil;
    
    [[NMEmartClientManager sharedClient] addOperationWithBlock:^(NSOperation *operation) {

        @try {
            
            tSSLSocketClient = [[TSSLSocketClient alloc] initWithHostname:[NMEmartClientManager sharedClient].host port:[NMEmartClientManager sharedClient].port];
            if(tSSLSocketClient == nil) {
                
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    NSError *error = [[NSError alloc] initWithDomain:@"连接超时，请检查网络或稍后再试。" code:-1015 userInfo:nil];
                    failureBlock(error);
                }];
                return;
            }
            TCompactProtocol *protocol = [[TCompactProtocol alloc] initWithTransport:tSSLSocketClient];
            
            NMTFEmartClient *tFApi1Client = [[NMTFEmartClient alloc] initWithProtocol:protocol];

            SEL dosel = NSSelectorFromString(selName);
            
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            
            if ([tFApi1Client respondsToSelector:dosel]) {
                
                NSObject *resp =  [tFApi1Client performSelector:dosel withObject:req];
                if ([resp respondsToSelector:@selector(header)]) {
                    NMTFRespHeader * header = [resp performSelector:@selector(header) withObject:nil];
                    if ([header isKindOfClass:[NMTFRespHeader class]]) {
                        if (header.status == 0) {
                            
                            if (tSSLSocketClient) {
                                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                    successBlock(resp);
                                }];
                            }
                            
                        } else {
                            
                            if (tSSLSocketClient) {
                                if (header.status == -3 || header.status == -4) {

                                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                        if (header.msg.length == 0) {
                                            header.msg = @"服务器返回错误";
                                        }
                                        NSError *error = [[NSError alloc] initWithDomain:header.msg code:header.status userInfo:nil];
                                        failureBlock(error);
                                        
                                    }];
                                } else {
                                    
                                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                        if (header.msg.length == 0) {
                                            header.msg = @"服务器返回错误";
                                        }
                                        NSError *error = [[NSError alloc] initWithDomain:header.msg code:header.status userInfo:nil];
                                        failureBlock(error);
                                    }];
                                }
                            }
  

                        }
                    } else {
                       
                        [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                            NSError *error = [[NSError alloc] initWithDomain:@"返回类型错误" code:-6014 userInfo:nil];
                                failureBlock(error);
                        }];
                        
                    }
                    
                } else {
                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                        NSError *error = [[NSError alloc] initWithDomain:@"执行错误，请检查网络或稍后再试。" code:-6015 userInfo:nil];
                        failureBlock(error);
                    }];
                }
            } else {
                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                    NSError *error = [[NSError alloc] initWithDomain:@"执行请求错误，请检查网络或稍后再试。" code:-6017 userInfo:nil];
                    failureBlock(error);
                }];
            }
            
#pragma clang diagnostic pop
            
        }
        @catch (NSException *e) {
            
            if (tSSLSocketClient) {
                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                    NSError *error = [[NSError alloc] initWithDomain:@"无法连接到服务器，请检查网络或稍后再试。" code:-6018 userInfo:nil];
                    failureBlock(error);
                }];
            }
            
        }
        @finally {
            if(tSSLSocketClient) {
                [tSSLSocketClient.mInput close];
                [tSSLSocketClient.mOutput close];
                tSSLSocketClient = nil;
            }
        }
        
    } queue:[NMEmartClientManager sharedClient].asyncQueue timeout:60 timeoutBlock:^{
        
        if(tSSLSocketClient) {
            [tSSLSocketClient.mInput close];
            [tSSLSocketClient.mOutput close];
            tSSLSocketClient = nil;
        }

        [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
            NSError *error = [[NSError alloc] initWithDomain:@"无法连接到服务器，请检查网络或稍后再试。" code:-1015 userInfo:nil];
            failureBlock(error);
        }];
    }];

    
}

- (void)addMsgToQuene:(NSObject *)req selName:(NSString *)selName messageID:(NSString *)messageID success:(void(^)(id content))successBlock failure:(void(^)(NSError *error))failureBlock {
    
    if ([NMEmartClientManager sharedClient].filesQueue == nil) {
        [NMEmartClientManager sharedClient].filesQueue       = [[NSOperationQueue alloc] init];
        [NMEmartClientManager sharedClient].filesQueue.name  = @"common async Queue";
        [NMEmartClientManager sharedClient].filesQueue.maxConcurrentOperationCount = 3;
    }
    
    __block TSocketClient *tSocketClient = nil;
    
    [[NMEmartClientManager sharedClient] addOperationWithBlock:^(NSOperation *operation) {
        
        @try {
            
            tSocketClient = [[TSocketClient alloc] initWithHostname:[NMEmartClientManager sharedClient].host port:[NMEmartClientManager sharedClient].port];
            if(tSocketClient == nil) {
                
                [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                    NSError *error = [[NSError alloc] initWithDomain:@"连接超时，请检查网络或稍后再试。" code:-1015 userInfo:nil];
                    failureBlock(error);
                }];
                return;
            }
            TCompactProtocol *protocol = [[TCompactProtocol alloc] initWithTransport:tSocketClient];
            
            NMTFEmartClient *tFApi1Client = [[NMTFEmartClient alloc] initWithProtocol:protocol];
            
            SEL dosel = NSSelectorFromString(selName);
            
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            
            if ([tFApi1Client respondsToSelector:dosel]) {
                
                NSObject *resp =  [tFApi1Client performSelector:dosel withObject:req];
                if (resp) {
                    
                    NMTFRespHeader * header = [resp performSelector:@selector(header) withObject:nil];
                    if ([header isKindOfClass:[NMTFRespHeader class]]) {
                        if (header.status == 0) {
                            
                            if (tSocketClient) {
                                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                    successBlock(resp);
                                }];
                            }
                            
                        } else {
                            
                            if (tSocketClient) {
                                if (header.status == -3 || header.status == -4) {
                                    if (header.msg.length == 0) {
                                        header.msg = @"服务器返回错误";
                                    }
                                    NSError *error = [[NSError alloc] initWithDomain:header.msg code:header.status userInfo:nil];
                                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                        failureBlock(error);
                                    }];
                                } else {
                                    
                                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                                        NSError *error = [[NSError alloc] initWithDomain:header.msg code:header.status userInfo:nil];
                                        failureBlock(error);
                                    }];
                                }
                                
                            }
                            
                        }
                    }
                    
                    
                } else {
                    [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                        NSError *error = [[NSError alloc] initWithDomain:@"返回类型错误" code:-6016 userInfo:nil];
                        failureBlock(error);
                    }];
                }
            } else {
                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                    NSError *error = [[NSError alloc] initWithDomain:@"执行请求错误" code:-6017 userInfo:nil];
                    failureBlock(error);
                }];
            }
            
#pragma clang diagnostic pop
            
        }
        @catch (NSException *e) {
            
            if (tSocketClient) {
                [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
                    NSError *error = [[NSError alloc] initWithDomain:messageID code:-1015 userInfo:nil];
                    failureBlock(error);
                }];
            }
            
        }
        @finally {
            if (tSocketClient) {
                [tSocketClient.mInput close];
                [tSocketClient.mOutput close];
                tSocketClient = nil;
            }
        }
        
    }  queue:[NMEmartClientManager sharedClient].filesQueue timeout:120 timeoutBlock:^{
        
        [[NSOperationQueue mainQueue] addOperationWithBlock: ^ {
            NSError *error = [[NSError alloc] initWithDomain:messageID code:-1015 userInfo:nil];
            failureBlock(error);
        }];
    }];
    


}
@end
