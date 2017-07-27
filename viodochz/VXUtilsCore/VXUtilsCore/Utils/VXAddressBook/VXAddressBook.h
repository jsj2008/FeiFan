//
//  VXAddressBook.h
//  viodoc
//
//  Created by viodoc on 9/17/15.
//  Copyright (c) 2015 viodoc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AddressBookUI/AddressBookUI.h>

@interface VXAddressBook : NSObject <ABPeoplePickerNavigationControllerDelegate>

@property(nonatomic,strong) UIViewController *controller;

@property(nonatomic,copy)void(^completeBlock)(NSString *name,NSString *tel);

-(void)showInController:(UIViewController *)controller completeBlock:(void (^)(NSString *, NSString *))block;

@end
