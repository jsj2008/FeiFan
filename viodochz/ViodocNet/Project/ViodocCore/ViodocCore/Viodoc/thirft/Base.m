/**
 * Autogenerated by Thrift Compiler (0.9.3)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

#import <Foundation/Foundation.h>

#import "TProtocol.h"
#import "TApplicationException.h"
#import "TProtocolException.h"
#import "TProtocolUtil.h"
#import "TProcessor.h"
#import "TObjective-C.h"
#import "TBase.h"
#import "TAsyncTransport.h"
#import "TProtocolFactory.h"
#import "TBaseClient.h"


#import "Base.h"

@implementation NXTFPage

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
  self.pageNo = 1;

  self.pageSize = 10;

#endif
  return self;
}

- (id) initWithPageNo: (int32_t) pageNo pageSize: (int32_t) pageSize total: (int64_t) total
{
  self = [super init];
  __pageNo = pageNo;
  __pageNo_isset = YES;
  __pageSize = pageSize;
  __pageSize_isset = YES;
  __total = total;
  __total_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"pageNo"])
  {
    __pageNo = [decoder decodeInt32ForKey: @"pageNo"];
    __pageNo_isset = YES;
  }
  if ([decoder containsValueForKey: @"pageSize"])
  {
    __pageSize = [decoder decodeInt32ForKey: @"pageSize"];
    __pageSize_isset = YES;
  }
  if ([decoder containsValueForKey: @"total"])
  {
    __total = [decoder decodeInt64ForKey: @"total"];
    __total_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__pageNo_isset)
  {
    [encoder encodeInt32: __pageNo forKey: @"pageNo"];
  }
  if (__pageSize_isset)
  {
    [encoder encodeInt32: __pageSize forKey: @"pageSize"];
  }
  if (__total_isset)
  {
    [encoder encodeInt64: __total forKey: @"total"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __pageNo_isset ? 2654435761 : 0;
  if (__pageNo_isset)
  {
    hash = (hash * 31) ^ [@(__pageNo) hash];
  }
  hash = (hash * 31) ^ __pageSize_isset ? 2654435761 : 0;
  if (__pageSize_isset)
  {
    hash = (hash * 31) ^ [@(__pageSize) hash];
  }
  hash = (hash * 31) ^ __total_isset ? 2654435761 : 0;
  if (__total_isset)
  {
    hash = (hash * 31) ^ [@(__total) hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[NXTFPage class]]) {
    return NO;
  }
  NXTFPage *other = (NXTFPage *)anObject;
  if ((__pageNo_isset != other->__pageNo_isset) ||
      (__pageNo_isset && (__pageNo != other->__pageNo))) {
    return NO;
  }
  if ((__pageSize_isset != other->__pageSize_isset) ||
      (__pageSize_isset && (__pageSize != other->__pageSize))) {
    return NO;
  }
  if ((__total_isset != other->__total_isset) ||
      (__total_isset && (__total != other->__total))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [super dealloc_stub];
}

- (int32_t) pageNo {
  return __pageNo;
}

- (void) setPageNo: (int32_t) pageNo {
  __pageNo = pageNo;
  __pageNo_isset = YES;
}

- (BOOL) pageNoIsSet {
  return __pageNo_isset;
}

- (void) unsetPageNo {
  __pageNo_isset = NO;
}

- (int32_t) pageSize {
  return __pageSize;
}

- (void) setPageSize: (int32_t) pageSize {
  __pageSize = pageSize;
  __pageSize_isset = YES;
}

- (BOOL) pageSizeIsSet {
  return __pageSize_isset;
}

- (void) unsetPageSize {
  __pageSize_isset = NO;
}

- (int64_t) total {
  return __total;
}

- (void) setTotal: (int64_t) total {
  __total = total;
  __total_isset = YES;
}

- (BOOL) totalIsSet {
  return __total_isset;
}

- (void) unsetTotal {
  __total_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setPageNo: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setPageSize: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_I64) {
          int64_t fieldValue = [inProtocol readI64];
          [self setTotal: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"Page"];
  if (__pageNo_isset) {
    [outProtocol writeFieldBeginWithName: @"pageNo" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __pageNo];
    [outProtocol writeFieldEnd];
  }
  if (__pageSize_isset) {
    [outProtocol writeFieldBeginWithName: @"pageSize" type: TType_I32 fieldID: 2];
    [outProtocol writeI32: __pageSize];
    [outProtocol writeFieldEnd];
  }
  if (__total_isset) {
    [outProtocol writeFieldBeginWithName: @"total" type: TType_I64 fieldID: 3];
    [outProtocol writeI64: __total];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"NXTFPage("];
  [ms appendString: @"pageNo:"];
  [ms appendFormat: @"%i", __pageNo];
  [ms appendString: @",pageSize:"];
  [ms appendFormat: @"%i", __pageSize];
  [ms appendString: @",total:"];
  [ms appendFormat: @"%qi", __total];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@implementation NXTFDevice

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithDeviceId: (NSString *) deviceId deviceName: (NSString *) deviceName osName: (NSString *) osName
{
  self = [super init];
  __deviceId = [deviceId retain_stub];
  __deviceId_isset = YES;
  __deviceName = [deviceName retain_stub];
  __deviceName_isset = YES;
  __osName = [osName retain_stub];
  __osName_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"deviceId"])
  {
    __deviceId = [[decoder decodeObjectForKey: @"deviceId"] retain_stub];
    __deviceId_isset = YES;
  }
  if ([decoder containsValueForKey: @"deviceName"])
  {
    __deviceName = [[decoder decodeObjectForKey: @"deviceName"] retain_stub];
    __deviceName_isset = YES;
  }
  if ([decoder containsValueForKey: @"osName"])
  {
    __osName = [[decoder decodeObjectForKey: @"osName"] retain_stub];
    __osName_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__deviceId_isset)
  {
    [encoder encodeObject: __deviceId forKey: @"deviceId"];
  }
  if (__deviceName_isset)
  {
    [encoder encodeObject: __deviceName forKey: @"deviceName"];
  }
  if (__osName_isset)
  {
    [encoder encodeObject: __osName forKey: @"osName"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __deviceId_isset ? 2654435761 : 0;
  if (__deviceId_isset)
  {
    hash = (hash * 31) ^ [__deviceId hash];
  }
  hash = (hash * 31) ^ __deviceName_isset ? 2654435761 : 0;
  if (__deviceName_isset)
  {
    hash = (hash * 31) ^ [__deviceName hash];
  }
  hash = (hash * 31) ^ __osName_isset ? 2654435761 : 0;
  if (__osName_isset)
  {
    hash = (hash * 31) ^ [__osName hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[NXTFDevice class]]) {
    return NO;
  }
  NXTFDevice *other = (NXTFDevice *)anObject;
  if ((__deviceId_isset != other->__deviceId_isset) ||
      (__deviceId_isset && ((__deviceId || other->__deviceId) && ![__deviceId isEqual:other->__deviceId]))) {
    return NO;
  }
  if ((__deviceName_isset != other->__deviceName_isset) ||
      (__deviceName_isset && ((__deviceName || other->__deviceName) && ![__deviceName isEqual:other->__deviceName]))) {
    return NO;
  }
  if ((__osName_isset != other->__osName_isset) ||
      (__osName_isset && ((__osName || other->__osName) && ![__osName isEqual:other->__osName]))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [__deviceId release_stub];
  [__deviceName release_stub];
  [__osName release_stub];
  [super dealloc_stub];
}

- (NSString *) deviceId {
  return [[__deviceId retain_stub] autorelease_stub];
}

- (void) setDeviceId: (NSString *) deviceId {
  [deviceId retain_stub];
  [__deviceId release_stub];
  __deviceId = deviceId;
  __deviceId_isset = YES;
}

- (BOOL) deviceIdIsSet {
  return __deviceId_isset;
}

- (void) unsetDeviceId {
  [__deviceId release_stub];
  __deviceId = nil;
  __deviceId_isset = NO;
}

- (NSString *) deviceName {
  return [[__deviceName retain_stub] autorelease_stub];
}

- (void) setDeviceName: (NSString *) deviceName {
  [deviceName retain_stub];
  [__deviceName release_stub];
  __deviceName = deviceName;
  __deviceName_isset = YES;
}

- (BOOL) deviceNameIsSet {
  return __deviceName_isset;
}

- (void) unsetDeviceName {
  [__deviceName release_stub];
  __deviceName = nil;
  __deviceName_isset = NO;
}

- (NSString *) osName {
  return [[__osName retain_stub] autorelease_stub];
}

- (void) setOsName: (NSString *) osName {
  [osName retain_stub];
  [__osName release_stub];
  __osName = osName;
  __osName_isset = YES;
}

- (BOOL) osNameIsSet {
  return __osName_isset;
}

- (void) unsetOsName {
  [__osName release_stub];
  __osName = nil;
  __osName_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setDeviceId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setDeviceName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setOsName: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"Device"];
  if (__deviceId_isset) {
    if (__deviceId != nil) {
      [outProtocol writeFieldBeginWithName: @"deviceId" type: TType_STRING fieldID: 1];
      [outProtocol writeString: __deviceId];
      [outProtocol writeFieldEnd];
    }
  }
  if (__deviceName_isset) {
    if (__deviceName != nil) {
      [outProtocol writeFieldBeginWithName: @"deviceName" type: TType_STRING fieldID: 2];
      [outProtocol writeString: __deviceName];
      [outProtocol writeFieldEnd];
    }
  }
  if (__osName_isset) {
    if (__osName != nil) {
      [outProtocol writeFieldBeginWithName: @"osName" type: TType_STRING fieldID: 3];
      [outProtocol writeString: __osName];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"NXTFDevice("];
  [ms appendString: @"deviceId:"];
  [ms appendFormat: @"\"%@\"", __deviceId];
  [ms appendString: @",deviceName:"];
  [ms appendFormat: @"\"%@\"", __deviceName];
  [ms appendString: @",osName:"];
  [ms appendFormat: @"\"%@\"", __osName];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@implementation NXTFReqHeader

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithAppType: (int32_t) appType appVersion: (NSString *) appVersion token: (NSString *) token timestamp: (int64_t) timestamp nonce: (NSString *) nonce signature: (NSString *) signature userId: (int64_t) userId device: (NXTFDevice *) device appKind: (int32_t) appKind appMark: (NSString *) appMark
{
  self = [super init];
  __appType = appType;
  __appType_isset = YES;
  __appVersion = [appVersion retain_stub];
  __appVersion_isset = YES;
  __token = [token retain_stub];
  __token_isset = YES;
  __timestamp = timestamp;
  __timestamp_isset = YES;
  __nonce = [nonce retain_stub];
  __nonce_isset = YES;
  __signature = [signature retain_stub];
  __signature_isset = YES;
  __userId = userId;
  __userId_isset = YES;
  __device = [device retain_stub];
  __device_isset = YES;
  __appKind = appKind;
  __appKind_isset = YES;
  __appMark = [appMark retain_stub];
  __appMark_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"appType"])
  {
    __appType = [decoder decodeInt32ForKey: @"appType"];
    __appType_isset = YES;
  }
  if ([decoder containsValueForKey: @"appVersion"])
  {
    __appVersion = [[decoder decodeObjectForKey: @"appVersion"] retain_stub];
    __appVersion_isset = YES;
  }
  if ([decoder containsValueForKey: @"token"])
  {
    __token = [[decoder decodeObjectForKey: @"token"] retain_stub];
    __token_isset = YES;
  }
  if ([decoder containsValueForKey: @"timestamp"])
  {
    __timestamp = [decoder decodeInt64ForKey: @"timestamp"];
    __timestamp_isset = YES;
  }
  if ([decoder containsValueForKey: @"nonce"])
  {
    __nonce = [[decoder decodeObjectForKey: @"nonce"] retain_stub];
    __nonce_isset = YES;
  }
  if ([decoder containsValueForKey: @"signature"])
  {
    __signature = [[decoder decodeObjectForKey: @"signature"] retain_stub];
    __signature_isset = YES;
  }
  if ([decoder containsValueForKey: @"userId"])
  {
    __userId = [decoder decodeInt64ForKey: @"userId"];
    __userId_isset = YES;
  }
  if ([decoder containsValueForKey: @"device"])
  {
    __device = [[decoder decodeObjectForKey: @"device"] retain_stub];
    __device_isset = YES;
  }
  if ([decoder containsValueForKey: @"appKind"])
  {
    __appKind = [decoder decodeInt32ForKey: @"appKind"];
    __appKind_isset = YES;
  }
  if ([decoder containsValueForKey: @"appMark"])
  {
    __appMark = [[decoder decodeObjectForKey: @"appMark"] retain_stub];
    __appMark_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__appType_isset)
  {
    [encoder encodeInt32: __appType forKey: @"appType"];
  }
  if (__appVersion_isset)
  {
    [encoder encodeObject: __appVersion forKey: @"appVersion"];
  }
  if (__token_isset)
  {
    [encoder encodeObject: __token forKey: @"token"];
  }
  if (__timestamp_isset)
  {
    [encoder encodeInt64: __timestamp forKey: @"timestamp"];
  }
  if (__nonce_isset)
  {
    [encoder encodeObject: __nonce forKey: @"nonce"];
  }
  if (__signature_isset)
  {
    [encoder encodeObject: __signature forKey: @"signature"];
  }
  if (__userId_isset)
  {
    [encoder encodeInt64: __userId forKey: @"userId"];
  }
  if (__device_isset)
  {
    [encoder encodeObject: __device forKey: @"device"];
  }
  if (__appKind_isset)
  {
    [encoder encodeInt32: __appKind forKey: @"appKind"];
  }
  if (__appMark_isset)
  {
    [encoder encodeObject: __appMark forKey: @"appMark"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __appType_isset ? 2654435761 : 0;
  if (__appType_isset)
  {
    hash = (hash * 31) ^ [@(__appType) hash];
  }
  hash = (hash * 31) ^ __appVersion_isset ? 2654435761 : 0;
  if (__appVersion_isset)
  {
    hash = (hash * 31) ^ [__appVersion hash];
  }
  hash = (hash * 31) ^ __token_isset ? 2654435761 : 0;
  if (__token_isset)
  {
    hash = (hash * 31) ^ [__token hash];
  }
  hash = (hash * 31) ^ __timestamp_isset ? 2654435761 : 0;
  if (__timestamp_isset)
  {
    hash = (hash * 31) ^ [@(__timestamp) hash];
  }
  hash = (hash * 31) ^ __nonce_isset ? 2654435761 : 0;
  if (__nonce_isset)
  {
    hash = (hash * 31) ^ [__nonce hash];
  }
  hash = (hash * 31) ^ __signature_isset ? 2654435761 : 0;
  if (__signature_isset)
  {
    hash = (hash * 31) ^ [__signature hash];
  }
  hash = (hash * 31) ^ __userId_isset ? 2654435761 : 0;
  if (__userId_isset)
  {
    hash = (hash * 31) ^ [@(__userId) hash];
  }
  hash = (hash * 31) ^ __device_isset ? 2654435761 : 0;
  if (__device_isset)
  {
    hash = (hash * 31) ^ [__device hash];
  }
  hash = (hash * 31) ^ __appKind_isset ? 2654435761 : 0;
  if (__appKind_isset)
  {
    hash = (hash * 31) ^ [@(__appKind) hash];
  }
  hash = (hash * 31) ^ __appMark_isset ? 2654435761 : 0;
  if (__appMark_isset)
  {
    hash = (hash * 31) ^ [__appMark hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[NXTFReqHeader class]]) {
    return NO;
  }
  NXTFReqHeader *other = (NXTFReqHeader *)anObject;
  if ((__appType_isset != other->__appType_isset) ||
      (__appType_isset && (__appType != other->__appType))) {
    return NO;
  }
  if ((__appVersion_isset != other->__appVersion_isset) ||
      (__appVersion_isset && ((__appVersion || other->__appVersion) && ![__appVersion isEqual:other->__appVersion]))) {
    return NO;
  }
  if ((__token_isset != other->__token_isset) ||
      (__token_isset && ((__token || other->__token) && ![__token isEqual:other->__token]))) {
    return NO;
  }
  if ((__timestamp_isset != other->__timestamp_isset) ||
      (__timestamp_isset && (__timestamp != other->__timestamp))) {
    return NO;
  }
  if ((__nonce_isset != other->__nonce_isset) ||
      (__nonce_isset && ((__nonce || other->__nonce) && ![__nonce isEqual:other->__nonce]))) {
    return NO;
  }
  if ((__signature_isset != other->__signature_isset) ||
      (__signature_isset && ((__signature || other->__signature) && ![__signature isEqual:other->__signature]))) {
    return NO;
  }
  if ((__userId_isset != other->__userId_isset) ||
      (__userId_isset && (__userId != other->__userId))) {
    return NO;
  }
  if ((__device_isset != other->__device_isset) ||
      (__device_isset && ((__device || other->__device) && ![__device isEqual:other->__device]))) {
    return NO;
  }
  if ((__appKind_isset != other->__appKind_isset) ||
      (__appKind_isset && (__appKind != other->__appKind))) {
    return NO;
  }
  if ((__appMark_isset != other->__appMark_isset) ||
      (__appMark_isset && ((__appMark || other->__appMark) && ![__appMark isEqual:other->__appMark]))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [__appVersion release_stub];
  [__token release_stub];
  [__nonce release_stub];
  [__signature release_stub];
  [__device release_stub];
  [__appMark release_stub];
  [super dealloc_stub];
}

- (int32_t) appType {
  return __appType;
}

- (void) setAppType: (int32_t) appType {
  __appType = appType;
  __appType_isset = YES;
}

- (BOOL) appTypeIsSet {
  return __appType_isset;
}

- (void) unsetAppType {
  __appType_isset = NO;
}

- (NSString *) appVersion {
  return [[__appVersion retain_stub] autorelease_stub];
}

- (void) setAppVersion: (NSString *) appVersion {
  [appVersion retain_stub];
  [__appVersion release_stub];
  __appVersion = appVersion;
  __appVersion_isset = YES;
}

- (BOOL) appVersionIsSet {
  return __appVersion_isset;
}

- (void) unsetAppVersion {
  [__appVersion release_stub];
  __appVersion = nil;
  __appVersion_isset = NO;
}

- (NSString *) token {
  return [[__token retain_stub] autorelease_stub];
}

- (void) setToken: (NSString *) token {
  [token retain_stub];
  [__token release_stub];
  __token = token;
  __token_isset = YES;
}

- (BOOL) tokenIsSet {
  return __token_isset;
}

- (void) unsetToken {
  [__token release_stub];
  __token = nil;
  __token_isset = NO;
}

- (int64_t) timestamp {
  return __timestamp;
}

- (void) setTimestamp: (int64_t) timestamp {
  __timestamp = timestamp;
  __timestamp_isset = YES;
}

- (BOOL) timestampIsSet {
  return __timestamp_isset;
}

- (void) unsetTimestamp {
  __timestamp_isset = NO;
}

- (NSString *) nonce {
  return [[__nonce retain_stub] autorelease_stub];
}

- (void) setNonce: (NSString *) nonce {
  [nonce retain_stub];
  [__nonce release_stub];
  __nonce = nonce;
  __nonce_isset = YES;
}

- (BOOL) nonceIsSet {
  return __nonce_isset;
}

- (void) unsetNonce {
  [__nonce release_stub];
  __nonce = nil;
  __nonce_isset = NO;
}

- (NSString *) signature {
  return [[__signature retain_stub] autorelease_stub];
}

- (void) setSignature: (NSString *) signature {
  [signature retain_stub];
  [__signature release_stub];
  __signature = signature;
  __signature_isset = YES;
}

- (BOOL) signatureIsSet {
  return __signature_isset;
}

- (void) unsetSignature {
  [__signature release_stub];
  __signature = nil;
  __signature_isset = NO;
}

- (int64_t) userId {
  return __userId;
}

- (void) setUserId: (int64_t) userId {
  __userId = userId;
  __userId_isset = YES;
}

- (BOOL) userIdIsSet {
  return __userId_isset;
}

- (void) unsetUserId {
  __userId_isset = NO;
}

- (NXTFDevice *) device {
  return [[__device retain_stub] autorelease_stub];
}

- (void) setDevice: (NXTFDevice *) device {
  [device retain_stub];
  [__device release_stub];
  __device = device;
  __device_isset = YES;
}

- (BOOL) deviceIsSet {
  return __device_isset;
}

- (void) unsetDevice {
  [__device release_stub];
  __device = nil;
  __device_isset = NO;
}

- (int32_t) appKind {
  return __appKind;
}

- (void) setAppKind: (int32_t) appKind {
  __appKind = appKind;
  __appKind_isset = YES;
}

- (BOOL) appKindIsSet {
  return __appKind_isset;
}

- (void) unsetAppKind {
  __appKind_isset = NO;
}

- (NSString *) appMark {
  return [[__appMark retain_stub] autorelease_stub];
}

- (void) setAppMark: (NSString *) appMark {
  [appMark retain_stub];
  [__appMark release_stub];
  __appMark = appMark;
  __appMark_isset = YES;
}

- (BOOL) appMarkIsSet {
  return __appMark_isset;
}

- (void) unsetAppMark {
  [__appMark release_stub];
  __appMark = nil;
  __appMark_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setAppType: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setAppVersion: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setToken: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 4:
        if (fieldType == TType_I64) {
          int64_t fieldValue = [inProtocol readI64];
          [self setTimestamp: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 5:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setNonce: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 6:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setSignature: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 7:
        if (fieldType == TType_I64) {
          int64_t fieldValue = [inProtocol readI64];
          [self setUserId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 8:
        if (fieldType == TType_STRUCT) {
          NXTFDevice *fieldValue = [[NXTFDevice alloc] init];
          [fieldValue read: inProtocol];
          [self setDevice: fieldValue];
          [fieldValue release_stub];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 9:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setAppKind: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 10:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setAppMark: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"ReqHeader"];
  if (__appType_isset) {
    [outProtocol writeFieldBeginWithName: @"appType" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __appType];
    [outProtocol writeFieldEnd];
  }
  if (__appVersion_isset) {
    if (__appVersion != nil) {
      [outProtocol writeFieldBeginWithName: @"appVersion" type: TType_STRING fieldID: 2];
      [outProtocol writeString: __appVersion];
      [outProtocol writeFieldEnd];
    }
  }
  if (__token_isset) {
    if (__token != nil) {
      [outProtocol writeFieldBeginWithName: @"token" type: TType_STRING fieldID: 3];
      [outProtocol writeString: __token];
      [outProtocol writeFieldEnd];
    }
  }
  if (__timestamp_isset) {
    [outProtocol writeFieldBeginWithName: @"timestamp" type: TType_I64 fieldID: 4];
    [outProtocol writeI64: __timestamp];
    [outProtocol writeFieldEnd];
  }
  if (__nonce_isset) {
    if (__nonce != nil) {
      [outProtocol writeFieldBeginWithName: @"nonce" type: TType_STRING fieldID: 5];
      [outProtocol writeString: __nonce];
      [outProtocol writeFieldEnd];
    }
  }
  if (__signature_isset) {
    if (__signature != nil) {
      [outProtocol writeFieldBeginWithName: @"signature" type: TType_STRING fieldID: 6];
      [outProtocol writeString: __signature];
      [outProtocol writeFieldEnd];
    }
  }
  if (__userId_isset) {
    [outProtocol writeFieldBeginWithName: @"userId" type: TType_I64 fieldID: 7];
    [outProtocol writeI64: __userId];
    [outProtocol writeFieldEnd];
  }
  if (__device_isset) {
    if (__device != nil) {
      [outProtocol writeFieldBeginWithName: @"device" type: TType_STRUCT fieldID: 8];
      [__device write: outProtocol];
      [outProtocol writeFieldEnd];
    }
  }
  if (__appKind_isset) {
    [outProtocol writeFieldBeginWithName: @"appKind" type: TType_I32 fieldID: 9];
    [outProtocol writeI32: __appKind];
    [outProtocol writeFieldEnd];
  }
  if (__appMark_isset) {
    if (__appMark != nil) {
      [outProtocol writeFieldBeginWithName: @"appMark" type: TType_STRING fieldID: 10];
      [outProtocol writeString: __appMark];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"NXTFReqHeader("];
  [ms appendString: @"appType:"];
  [ms appendFormat: @"%i", __appType];
  [ms appendString: @",appVersion:"];
  [ms appendFormat: @"\"%@\"", __appVersion];
  [ms appendString: @",token:"];
  [ms appendFormat: @"\"%@\"", __token];
  [ms appendString: @",timestamp:"];
  [ms appendFormat: @"%qi", __timestamp];
  [ms appendString: @",nonce:"];
  [ms appendFormat: @"\"%@\"", __nonce];
  [ms appendString: @",signature:"];
  [ms appendFormat: @"\"%@\"", __signature];
  [ms appendString: @",userId:"];
  [ms appendFormat: @"%qi", __userId];
  [ms appendString: @",device:"];
  [ms appendFormat: @"%@", __device];
  [ms appendString: @",appKind:"];
  [ms appendFormat: @"%i", __appKind];
  [ms appendString: @",appMark:"];
  [ms appendFormat: @"\"%@\"", __appMark];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

@implementation NXTFRespHeader

- (id) init
{
  self = [super init];
#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
#endif
  return self;
}

- (id) initWithStatus: (int32_t) status msg: (NSString *) msg
{
  self = [super init];
  __status = status;
  __status_isset = YES;
  __msg = [msg retain_stub];
  __msg_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"status"])
  {
    __status = [decoder decodeInt32ForKey: @"status"];
    __status_isset = YES;
  }
  if ([decoder containsValueForKey: @"msg"])
  {
    __msg = [[decoder decodeObjectForKey: @"msg"] retain_stub];
    __msg_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__status_isset)
  {
    [encoder encodeInt32: __status forKey: @"status"];
  }
  if (__msg_isset)
  {
    [encoder encodeObject: __msg forKey: @"msg"];
  }
}

- (NSUInteger) hash
{
  NSUInteger hash = 17;
  hash = (hash * 31) ^ __status_isset ? 2654435761 : 0;
  if (__status_isset)
  {
    hash = (hash * 31) ^ [@(__status) hash];
  }
  hash = (hash * 31) ^ __msg_isset ? 2654435761 : 0;
  if (__msg_isset)
  {
    hash = (hash * 31) ^ [__msg hash];
  }
  return hash;
}

- (BOOL) isEqual: (id) anObject
{
  if (self == anObject) {
    return YES;
  }
  if (![anObject isKindOfClass:[NXTFRespHeader class]]) {
    return NO;
  }
  NXTFRespHeader *other = (NXTFRespHeader *)anObject;
  if ((__status_isset != other->__status_isset) ||
      (__status_isset && (__status != other->__status))) {
    return NO;
  }
  if ((__msg_isset != other->__msg_isset) ||
      (__msg_isset && ((__msg || other->__msg) && ![__msg isEqual:other->__msg]))) {
    return NO;
  }
  return YES;
}

- (void) dealloc
{
  [__msg release_stub];
  [super dealloc_stub];
}

- (int32_t) status {
  return __status;
}

- (void) setStatus: (int32_t) status {
  __status = status;
  __status_isset = YES;
}

- (BOOL) statusIsSet {
  return __status_isset;
}

- (void) unsetStatus {
  __status_isset = NO;
}

- (NSString *) msg {
  return [[__msg retain_stub] autorelease_stub];
}

- (void) setMsg: (NSString *) msg {
  [msg retain_stub];
  [__msg release_stub];
  __msg = msg;
  __msg_isset = YES;
}

- (BOOL) msgIsSet {
  return __msg_isset;
}

- (void) unsetMsg {
  [__msg release_stub];
  __msg = nil;
  __msg_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setStatus: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_STRING) {
          NSString * fieldValue = [inProtocol readString];
          [self setMsg: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"RespHeader"];
  if (__status_isset) {
    [outProtocol writeFieldBeginWithName: @"status" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __status];
    [outProtocol writeFieldEnd];
  }
  if (__msg_isset) {
    if (__msg != nil) {
      [outProtocol writeFieldBeginWithName: @"msg" type: TType_STRING fieldID: 2];
      [outProtocol writeString: __msg];
      [outProtocol writeFieldEnd];
    }
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (void) validate {
  // check for required fields
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"NXTFRespHeader("];
  [ms appendString: @"status:"];
  [ms appendFormat: @"%i", __status];
  [ms appendString: @",msg:"];
  [ms appendFormat: @"\"%@\"", __msg];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end


@implementation NXTFBaseConstants
+ (void) initialize {
}
@end

