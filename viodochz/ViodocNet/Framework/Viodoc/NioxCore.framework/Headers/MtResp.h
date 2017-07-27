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

#import "MtBase.h"
#import "MtRespDto.h"

@interface NMTFGetMtBannersResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSMutableArray * __banners;

  BOOL __header_isset;
  BOOL __banners_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=banners, setter=setBanners:) NSMutableArray * banners;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header banners: (NSMutableArray *) banners;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) banners;
- (void) setBanners: (NSMutableArray *) banners;
#endif
- (BOOL) bannersIsSet;

@end

@interface NMTFGetMtProCatsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSMutableArray * __proCats;

  BOOL __header_isset;
  BOOL __proCats_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=proCats, setter=setProCats:) NSMutableArray * proCats;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header proCats: (NSMutableArray *) proCats;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) proCats;
- (void) setProCats: (NSMutableArray *) proCats;
#endif
- (BOOL) proCatsIsSet;

@end

@interface NMTFGetMtMersResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFPage * __page;
  NSMutableArray * __mers;

  BOOL __header_isset;
  BOOL __page_isset;
  BOOL __mers_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=page, setter=setPage:) NMTFPage * page;
@property (nonatomic, retain, getter=mers, setter=setMers:) NSMutableArray * mers;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header page: (NMTFPage *) page mers: (NSMutableArray *) mers;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFPage *) page;
- (void) setPage: (NMTFPage *) page;
#endif
- (BOOL) pageIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) mers;
- (void) setMers: (NSMutableArray *) mers;
#endif
- (BOOL) mersIsSet;

@end

@interface NMTFGetMtMerInfoResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFMerDto * __mer;

  BOOL __header_isset;
  BOOL __mer_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=mer, setter=setMer:) NMTFMerDto * mer;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header mer: (NMTFMerDto *) mer;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFMerDto *) mer;
- (void) setMer: (NMTFMerDto *) mer;
#endif
- (BOOL) merIsSet;

@end

@interface NMTFGetMtMerStoresResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFPage * __page;
  NSMutableArray * __merStores;

  BOOL __header_isset;
  BOOL __page_isset;
  BOOL __merStores_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=page, setter=setPage:) NMTFPage * page;
@property (nonatomic, retain, getter=merStores, setter=setMerStores:) NSMutableArray * merStores;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header page: (NMTFPage *) page merStores: (NSMutableArray *) merStores;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFPage *) page;
- (void) setPage: (NMTFPage *) page;
#endif
- (BOOL) pageIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) merStores;
- (void) setMerStores: (NSMutableArray *) merStores;
#endif
- (BOOL) merStoresIsSet;

@end

@interface NMTFGetMtProsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFPage * __page;
  NSMutableArray * __pros;

  BOOL __header_isset;
  BOOL __page_isset;
  BOOL __pros_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=page, setter=setPage:) NMTFPage * page;
@property (nonatomic, retain, getter=pros, setter=setPros:) NSMutableArray * pros;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header page: (NMTFPage *) page pros: (NSMutableArray *) pros;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFPage *) page;
- (void) setPage: (NMTFPage *) page;
#endif
- (BOOL) pageIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) pros;
- (void) setPros: (NSMutableArray *) pros;
#endif
- (BOOL) prosIsSet;

@end

@interface NMTFGetMtProInfoResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFProInfoDto * __proInfo;

  BOOL __header_isset;
  BOOL __proInfo_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=proInfo, setter=setProInfo:) NMTFProInfoDto * proInfo;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header proInfo: (NMTFProInfoDto *) proInfo;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFProInfoDto *) proInfo;
- (void) setProInfo: (NMTFProInfoDto *) proInfo;
#endif
- (BOOL) proInfoIsSet;

@end

@interface NMTFFindMtMerProsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFPage * __page;
  NSMutableArray * __mers;
  NSMutableArray * __pros;

  BOOL __header_isset;
  BOOL __page_isset;
  BOOL __mers_isset;
  BOOL __pros_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=page, setter=setPage:) NMTFPage * page;
@property (nonatomic, retain, getter=mers, setter=setMers:) NSMutableArray * mers;
@property (nonatomic, retain, getter=pros, setter=setPros:) NSMutableArray * pros;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header page: (NMTFPage *) page mers: (NSMutableArray *) mers pros: (NSMutableArray *) pros;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFPage *) page;
- (void) setPage: (NMTFPage *) page;
#endif
- (BOOL) pageIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) mers;
- (void) setMers: (NSMutableArray *) mers;
#endif
- (BOOL) mersIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) pros;
- (void) setPros: (NSMutableArray *) pros;
#endif
- (BOOL) prosIsSet;

@end

@interface NMTFGetMtShipAddsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFPage * __page;
  NSMutableArray * __addresses;

  BOOL __header_isset;
  BOOL __page_isset;
  BOOL __addresses_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=page, setter=setPage:) NMTFPage * page;
@property (nonatomic, retain, getter=addresses, setter=setAddresses:) NSMutableArray * addresses;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header page: (NMTFPage *) page addresses: (NSMutableArray *) addresses;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFPage *) page;
- (void) setPage: (NMTFPage *) page;
#endif
- (BOOL) pageIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) addresses;
- (void) setAddresses: (NSMutableArray *) addresses;
#endif
- (BOOL) addressesIsSet;

@end

@interface NMTFEditMtShipAddResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFAddressDto * __addDto;

  BOOL __header_isset;
  BOOL __addDto_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=addDto, setter=setAddDto:) NMTFAddressDto * addDto;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header addDto: (NMTFAddressDto *) addDto;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFAddressDto *) addDto;
- (void) setAddDto: (NMTFAddressDto *) addDto;
#endif
- (BOOL) addDtoIsSet;

@end

@interface NMTFGetMtCartProsCntResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  int32_t __prosCnt;

  BOOL __header_isset;
  BOOL __prosCnt_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, getter=prosCnt, setter=setProsCnt:) int32_t prosCnt;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header prosCnt: (int32_t) prosCnt;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (int32_t) prosCnt;
- (void) setProsCnt: (int32_t) prosCnt;
#endif
- (BOOL) prosCntIsSet;

@end

@interface NMTFGetMtCartProsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFPage * __page;
  NSMutableArray * __cartPros;

  BOOL __header_isset;
  BOOL __page_isset;
  BOOL __cartPros_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=page, setter=setPage:) NMTFPage * page;
@property (nonatomic, retain, getter=cartPros, setter=setCartPros:) NSMutableArray * cartPros;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header page: (NMTFPage *) page cartPros: (NSMutableArray *) cartPros;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFPage *) page;
- (void) setPage: (NMTFPage *) page;
#endif
- (BOOL) pageIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) cartPros;
- (void) setCartPros: (NSMutableArray *) cartPros;
#endif
- (BOOL) cartProsIsSet;

@end

@interface NMTFEditMtCartProsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;

  BOOL __header_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

@end

@interface NMTFCreateMtOrderResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSString * __totalAmount;
  NSString * __orderNo;
  NSMutableArray * __merchantNos;

  BOOL __header_isset;
  BOOL __totalAmount_isset;
  BOOL __orderNo_isset;
  BOOL __merchantNos_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=totalAmount, setter=setTotalAmount:) NSString * totalAmount;
@property (nonatomic, retain, getter=orderNo, setter=setOrderNo:) NSString * orderNo;
@property (nonatomic, retain, getter=merchantNos, setter=setMerchantNos:) NSMutableArray * merchantNos;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header totalAmount: (NSString *) totalAmount orderNo: (NSString *) orderNo merchantNos: (NSMutableArray *) merchantNos;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSString *) totalAmount;
- (void) setTotalAmount: (NSString *) totalAmount;
#endif
- (BOOL) totalAmountIsSet;

#if !__has_feature(objc_arc)
- (NSString *) orderNo;
- (void) setOrderNo: (NSString *) orderNo;
#endif
- (BOOL) orderNoIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) merchantNos;
- (void) setMerchantNos: (NSMutableArray *) merchantNos;
#endif
- (BOOL) merchantNosIsSet;

@end

@interface NMTFCancelMtOrderResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;

  BOOL __header_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

@end

@interface NMTFDelMtOrderResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;

  BOOL __header_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

@end

@interface NMTFPrePayMtOrderResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSString * __orderNo;

  BOOL __header_isset;
  BOOL __orderNo_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=orderNo, setter=setOrderNo:) NSString * orderNo;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header orderNo: (NSString *) orderNo;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSString *) orderNo;
- (void) setOrderNo: (NSString *) orderNo;
#endif
- (BOOL) orderNoIsSet;

@end

@interface NMTFPayMtOrderResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;

  BOOL __header_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

@end

@interface NMTFReceiptMtProsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;

  BOOL __header_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

@end

@interface NMTFReqMtRefundResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;

  BOOL __header_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

@end

@interface NMTFGetUserOrderListResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFPage * __page;
  NSMutableArray * __orderMers;

  BOOL __header_isset;
  BOOL __page_isset;
  BOOL __orderMers_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=page, setter=setPage:) NMTFPage * page;
@property (nonatomic, retain, getter=orderMers, setter=setOrderMers:) NSMutableArray * orderMers;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header page: (NMTFPage *) page orderMers: (NSMutableArray *) orderMers;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFPage *) page;
- (void) setPage: (NMTFPage *) page;
#endif
- (BOOL) pageIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) orderMers;
- (void) setOrderMers: (NSMutableArray *) orderMers;
#endif
- (BOOL) orderMersIsSet;

@end

@interface NMTFGetPayBanksResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSMutableArray * __banks;

  BOOL __header_isset;
  BOOL __banks_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=banks, setter=setBanks:) NSMutableArray * banks;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header banks: (NSMutableArray *) banks;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) banks;
- (void) setBanks: (NSMutableArray *) banks;
#endif
- (BOOL) banksIsSet;

@end

@interface NMTFPreBindBankCardResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSString * __txSNBinding;
  NSString * __merchantNo;

  BOOL __header_isset;
  BOOL __txSNBinding_isset;
  BOOL __merchantNo_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=txSNBinding, setter=setTxSNBinding:) NSString * txSNBinding;
@property (nonatomic, retain, getter=merchantNo, setter=setMerchantNo:) NSString * merchantNo;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header txSNBinding: (NSString *) txSNBinding merchantNo: (NSString *) merchantNo;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSString *) txSNBinding;
- (void) setTxSNBinding: (NSString *) txSNBinding;
#endif
- (BOOL) txSNBindingIsSet;

#if !__has_feature(objc_arc)
- (NSString *) merchantNo;
- (void) setMerchantNo: (NSString *) merchantNo;
#endif
- (BOOL) merchantNoIsSet;

@end

@interface NMTFBindBankCardResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSString * __txSNBinding;

  BOOL __header_isset;
  BOOL __txSNBinding_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=txSNBinding, setter=setTxSNBinding:) NSString * txSNBinding;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header txSNBinding: (NSString *) txSNBinding;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSString *) txSNBinding;
- (void) setTxSNBinding: (NSString *) txSNBinding;
#endif
- (BOOL) txSNBindingIsSet;

@end

@interface NMTFGetMtBindingsResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NSMutableArray * __bindings;

  BOOL __header_isset;
  BOOL __bindings_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=bindings, setter=setBindings:) NSMutableArray * bindings;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header bindings: (NSMutableArray *) bindings;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NSMutableArray *) bindings;
- (void) setBindings: (NSMutableArray *) bindings;
#endif
- (BOOL) bindingsIsSet;

@end

@interface NMTFGetMtOrderDetailResp : NSObject <TBase, NSCoding> {
  NMTFRespHeader * __header;
  NMTFOrderMerProsDto * __orderMerPros;
  NSString * __orderNo;
  NSString * __orderStatus;
  NSString * __consignee;
  NSString * __telephone;
  NSString * __district;
  NSString * __addrDetail;
  NSString * __logiNumber;
  NSString * __logiComp;
  NSString * __payWay;
  NSString * __invoiceType;
  NSString * __invoiceHead;
  NSString * __orderDate;
  NSString * __payDate;
  NSString * __outDate;
  NSString * __confirmDate;
  NSString * __serviceHotline;

  BOOL __header_isset;
  BOOL __orderMerPros_isset;
  BOOL __orderNo_isset;
  BOOL __orderStatus_isset;
  BOOL __consignee_isset;
  BOOL __telephone_isset;
  BOOL __district_isset;
  BOOL __addrDetail_isset;
  BOOL __logiNumber_isset;
  BOOL __logiComp_isset;
  BOOL __payWay_isset;
  BOOL __invoiceType_isset;
  BOOL __invoiceHead_isset;
  BOOL __orderDate_isset;
  BOOL __payDate_isset;
  BOOL __outDate_isset;
  BOOL __confirmDate_isset;
  BOOL __serviceHotline_isset;
}

#if TARGET_OS_IPHONE || (MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_5)
@property (nonatomic, retain, getter=header, setter=setHeader:) NMTFRespHeader * header;
@property (nonatomic, retain, getter=orderMerPros, setter=setOrderMerPros:) NMTFOrderMerProsDto * orderMerPros;
@property (nonatomic, retain, getter=orderNo, setter=setOrderNo:) NSString * orderNo;
@property (nonatomic, retain, getter=orderStatus, setter=setOrderStatus:) NSString * orderStatus;
@property (nonatomic, retain, getter=consignee, setter=setConsignee:) NSString * consignee;
@property (nonatomic, retain, getter=telephone, setter=setTelephone:) NSString * telephone;
@property (nonatomic, retain, getter=district, setter=setDistrict:) NSString * district;
@property (nonatomic, retain, getter=addrDetail, setter=setAddrDetail:) NSString * addrDetail;
@property (nonatomic, retain, getter=logiNumber, setter=setLogiNumber:) NSString * logiNumber;
@property (nonatomic, retain, getter=logiComp, setter=setLogiComp:) NSString * logiComp;
@property (nonatomic, retain, getter=payWay, setter=setPayWay:) NSString * payWay;
@property (nonatomic, retain, getter=invoiceType, setter=setInvoiceType:) NSString * invoiceType;
@property (nonatomic, retain, getter=invoiceHead, setter=setInvoiceHead:) NSString * invoiceHead;
@property (nonatomic, retain, getter=orderDate, setter=setOrderDate:) NSString * orderDate;
@property (nonatomic, retain, getter=payDate, setter=setPayDate:) NSString * payDate;
@property (nonatomic, retain, getter=outDate, setter=setOutDate:) NSString * outDate;
@property (nonatomic, retain, getter=confirmDate, setter=setConfirmDate:) NSString * confirmDate;
@property (nonatomic, retain, getter=serviceHotline, setter=setServiceHotline:) NSString * serviceHotline;
#endif

- (id) init;
- (id) initWithHeader: (NMTFRespHeader *) header orderMerPros: (NMTFOrderMerProsDto *) orderMerPros orderNo: (NSString *) orderNo orderStatus: (NSString *) orderStatus consignee: (NSString *) consignee telephone: (NSString *) telephone district: (NSString *) district addrDetail: (NSString *) addrDetail logiNumber: (NSString *) logiNumber logiComp: (NSString *) logiComp payWay: (NSString *) payWay invoiceType: (NSString *) invoiceType invoiceHead: (NSString *) invoiceHead orderDate: (NSString *) orderDate payDate: (NSString *) payDate outDate: (NSString *) outDate confirmDate: (NSString *) confirmDate serviceHotline: (NSString *) serviceHotline;

- (void) read: (id <TProtocol>) inProtocol;
- (void) write: (id <TProtocol>) outProtocol;

- (void) validate;

#if !__has_feature(objc_arc)
- (NMTFRespHeader *) header;
- (void) setHeader: (NMTFRespHeader *) header;
#endif
- (BOOL) headerIsSet;

#if !__has_feature(objc_arc)
- (NMTFOrderMerProsDto *) orderMerPros;
- (void) setOrderMerPros: (NMTFOrderMerProsDto *) orderMerPros;
#endif
- (BOOL) orderMerProsIsSet;

#if !__has_feature(objc_arc)
- (NSString *) orderNo;
- (void) setOrderNo: (NSString *) orderNo;
#endif
- (BOOL) orderNoIsSet;

#if !__has_feature(objc_arc)
- (NSString *) orderStatus;
- (void) setOrderStatus: (NSString *) orderStatus;
#endif
- (BOOL) orderStatusIsSet;

#if !__has_feature(objc_arc)
- (NSString *) consignee;
- (void) setConsignee: (NSString *) consignee;
#endif
- (BOOL) consigneeIsSet;

#if !__has_feature(objc_arc)
- (NSString *) telephone;
- (void) setTelephone: (NSString *) telephone;
#endif
- (BOOL) telephoneIsSet;

#if !__has_feature(objc_arc)
- (NSString *) district;
- (void) setDistrict: (NSString *) district;
#endif
- (BOOL) districtIsSet;

#if !__has_feature(objc_arc)
- (NSString *) addrDetail;
- (void) setAddrDetail: (NSString *) addrDetail;
#endif
- (BOOL) addrDetailIsSet;

#if !__has_feature(objc_arc)
- (NSString *) logiNumber;
- (void) setLogiNumber: (NSString *) logiNumber;
#endif
- (BOOL) logiNumberIsSet;

#if !__has_feature(objc_arc)
- (NSString *) logiComp;
- (void) setLogiComp: (NSString *) logiComp;
#endif
- (BOOL) logiCompIsSet;

#if !__has_feature(objc_arc)
- (NSString *) payWay;
- (void) setPayWay: (NSString *) payWay;
#endif
- (BOOL) payWayIsSet;

#if !__has_feature(objc_arc)
- (NSString *) invoiceType;
- (void) setInvoiceType: (NSString *) invoiceType;
#endif
- (BOOL) invoiceTypeIsSet;

#if !__has_feature(objc_arc)
- (NSString *) invoiceHead;
- (void) setInvoiceHead: (NSString *) invoiceHead;
#endif
- (BOOL) invoiceHeadIsSet;

#if !__has_feature(objc_arc)
- (NSString *) orderDate;
- (void) setOrderDate: (NSString *) orderDate;
#endif
- (BOOL) orderDateIsSet;

#if !__has_feature(objc_arc)
- (NSString *) payDate;
- (void) setPayDate: (NSString *) payDate;
#endif
- (BOOL) payDateIsSet;

#if !__has_feature(objc_arc)
- (NSString *) outDate;
- (void) setOutDate: (NSString *) outDate;
#endif
- (BOOL) outDateIsSet;

#if !__has_feature(objc_arc)
- (NSString *) confirmDate;
- (void) setConfirmDate: (NSString *) confirmDate;
#endif
- (BOOL) confirmDateIsSet;

#if !__has_feature(objc_arc)
- (NSString *) serviceHotline;
- (void) setServiceHotline: (NSString *) serviceHotline;
#endif
- (BOOL) serviceHotlineIsSet;

@end

@interface NMTFMtRespConstants : NSObject {
}
@end