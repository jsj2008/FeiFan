//
//  NSDictionary+KeySort.m
//  Anymed
//
//  Created by viodoc on 15/3/25.
//  Copyright (c) 2015年 viodoc. All rights reserved.
//

#import "NSDictionary+KeySort.h"

@implementation NSDictionary(NSDictionary_KeySort)

- (NSArray *)allSortStirngKeys {
    NSArray *sortArray = [[self allKeys] sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        return [obj1 compare:obj2 options:NSNumericSearch];
    }];
    return sortArray;
}

@end
