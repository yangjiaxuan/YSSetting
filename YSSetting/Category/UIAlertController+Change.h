//
//  UIAlertController+Change.h
//  WeiFangCredit
//
//  Created by yangsen on 16/12/12.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^AlertActionBlock) (UIAlertController *alertContrller);

@interface UIAlertController (Change)

+ (UIAlertController *)defauleAlertChangeInfomationWithController:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message canleAction:(AlertActionBlock)canleActionBlock sureActionBlock:(AlertActionBlock)sureActionBlock;

+ (UIAlertController *)textFieldAlertChangeInfomationWithPlaceholders:(NSArray <NSString *>*)placeholders controller:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message canleAction:(AlertActionBlock)canleActionBlock sureActionBlock:(AlertActionBlock)sureActionBlock;

@end
