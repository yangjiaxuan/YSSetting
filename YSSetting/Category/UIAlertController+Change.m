//
//  UIAlertController+Change.m
//  WeiFangCredit
//
//  Created by yangsen on 16/12/12.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import "UIAlertController+Change.h"

@implementation UIAlertController (Change)

+ (UIAlertController *)defauleAlertChangeInfomationWithController:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message canleAction:(AlertActionBlock)canleActionBlock sureActionBlock:(AlertActionBlock)sureActionBlock{

    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    __weak typeof(alertController) weakAlertC = alertController;
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        __strong typeof(alertController) strongAlertC = weakAlertC;
        if (canleActionBlock) {
            canleActionBlock(strongAlertC);
        }
        
    }];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        __strong typeof(alertController) strongAlertC = weakAlertC;
        if (canleActionBlock) {
            canleActionBlock(strongAlertC);
        }
    }];
    [alertController addAction:cancle];
    [alertController addAction:sure];
    [viewController presentViewController:alertController animated:YES completion:nil];
    return alertController;
}

+ (UIAlertController *)textFieldAlertChangeInfomationWithPlaceholders:(NSArray <NSString *>*)placeholders controller:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message canleAction:(AlertActionBlock)canleActionBlock sureActionBlock:(AlertActionBlock)sureActionBlock{

    UIAlertController *alertC = [self defauleAlertChangeInfomationWithController:viewController title:title message:message canleAction:canleActionBlock sureActionBlock:sureActionBlock];
    for (NSString *placeholder in placeholders) {
        [alertC addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
            textField.placeholder = placeholder;
        }];
    }
    return alertC;
    
}

@end
