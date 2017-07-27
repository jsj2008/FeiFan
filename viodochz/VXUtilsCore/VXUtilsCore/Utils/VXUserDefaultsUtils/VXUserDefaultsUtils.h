//
//  VXUserDefaultsUtils.h
//  viodoc
//
//  Created by viodoc on 10/29/15.
//  Copyright © 2015 viodoc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VXUserDefaultsUtils : NSObject

// 上次就诊的医院
+ (void)saveLastHospitalId:(NSString *)lastHospitalId;
+ (NSString *)getSavedLastHospitalId;

// 上次选择的名称城市
+ (void)saveLastCityName:(NSString *)lastCityName;
+ (NSString *)getSavedLastCityName;
// 上次选择城市Code
+ (void)saveLastCityCode:(NSString *)saveLastCityCode;
+ (NSString *)getSavedLastCityCode;

@end
