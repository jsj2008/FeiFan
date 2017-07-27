//
//  NXAddressBook.h
//  Niox
//
//  Created by zhuenkai on 9/17/15.
//  Copyright (c) 2015 neusoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBookUI/AddressBookUI.h>

@interface NXAddressBook : NSObject <ABPeoplePickerNavigationControllerDelegate>

@property(nonatomic,strong) UIViewController *controller;

@property(nonatomic,copy)void(^completeBlock)(NSString *name,NSString *tel);

-(void)showInController:(UIViewController *)controller completeBlock:(void (^)(NSString *, NSString *))block;

@end
