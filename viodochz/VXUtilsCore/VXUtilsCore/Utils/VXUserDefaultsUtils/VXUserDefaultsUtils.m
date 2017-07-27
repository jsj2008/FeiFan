//
//  VXUserDefaultsUtils.m
//  viodoc
//
//  Created by viodoc on 10/29/15.
//  Copyright © 2015 viodoc. All rights reserved.
//

#import "VXUserDefaultsUtils.h"

#define LAST_HOSPITAL_ID       @"last_hospitalId"
#define LAST_CITY_NAME         @"last_cityName"
#define LAST_CITY_Code         @"last_cityCode"

@implementation VXUserDefaultsUtils

+ (void)saveUserDefaultValue:(NSString *)value key:(NSString *)key {
    
    NSUserDefaults *userDefaulet = [NSUserDefaults standardUserDefaults];
    [userDefaulet setObject:value forKey:key];
}

+ (NSString *)getSavedValueByKey:(NSString *)key {
    
    NSUserDefaults *userDefaulet = [NSUserDefaults standardUserDefaults];
    return [userDefaulet objectForKey:key];
}

+ (void)saveLastHospitalId:(NSString *)lastHospitalId {
    [self saveUserDefaultValue:lastHospitalId key:LAST_HOSPITAL_ID];
}

+ (NSString *)getSavedLastHospitalId {
    return [self getSavedValueByKey:LAST_HOSPITAL_ID];
}

+ (void)saveLastCityName:(NSString *)lastCityName {
    [self saveUserDefaultValue:lastCityName key:LAST_CITY_NAME];
}

+ (NSString *)getSavedLastCityName {
    
    return [self getSavedValueByKey:LAST_CITY_NAME];
}

// 上次选择城市Code
+ (void)saveLastCityCode:(NSString *)saveLastCityCode {
    [self saveUserDefaultValue:saveLastCityCode key:LAST_CITY_Code];
}
+ (NSString *)getSavedLastCityCode {
    return [self getSavedValueByKey:LAST_CITY_Code];
}

@end
