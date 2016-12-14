//
//  YSSettingView.h
//  YSSetting
//
//  Created by yangsen on 16/12/13.
//  Copyright © 2016年 yangsen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SetCellModel.h"
#import "SettingBaseCell.h"


@interface YSSettingView : UIView

@property (copy, nonatomic) NSArray *dataArray;

// 默认 10
@property (assign, nonatomic) CGFloat sectionHeight;

// 分界线颜色
@property (strong, nonatomic) UIColor *separatorColor;

// 背景色
@property (strong, nonatomic) UIColor *backColor;

@end
