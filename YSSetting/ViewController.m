//
//  ViewController.m
//  YSSetting
//
//  Created by yangsen on 16/12/13.
//  Copyright © 2016年 yangsen. All rights reserved.
//

#import "ViewController.h"

#import "YSSettingView.h"
#import "SettingNoneCell.h"
#import "SettingSwitchCell.h"
#import "SettingTitleCell.h"
#import "SettingLoginOutCell.h"
#import "SettingImageCell.h"

#import "UIAlertController+Change.h"

@interface ViewController ()
{
    NSArray     *_dataArr;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableArray *cellsection_0Arr = [NSMutableArray array];
    SetCellModel *cellModel = [[SetCellModel alloc]init];
    cellModel.title = @"头像";
    cellModel.rightImageName  = @"1";
    cellModel.cellHeight      = 120;
    cellModel.cellNibName     = SetImageCell;
    cellModel.cellIdentifier  = SetImageCell;
    cellModel.cellContentAction = ^(id userData, UITableViewCell *cell){
        
        [UIAlertController defauleAlertChangeInfomationWithController:self title:@"温馨提示" message:@"cell高度120" canleAction:nil sureActionBlock:^(UIAlertController *alertContrller) {
            
        }];
    };
    [cellsection_0Arr addObject:cellModel];
    
    NSMutableArray *cellsection_1Arr = [NSMutableArray array];
    cellModel = [[SetCellModel alloc]init];
    cellModel.title = @"消息推送";
    cellModel.rightTitle  = @"开启";
    cellModel.showDetailImage = NO;
    cellModel.cellNibName     = SetSwitchCell;
    cellModel.cellIdentifier  = SetSwitchCell;
    cellModel.cellContentAction = ^(id userData, UITableViewCell *cell){
        
        NSNumber *switchValue = (NSNumber *)userData;
        NSLog(@"消息推送:%@",switchValue);
    };
    [cellsection_1Arr addObject:cellModel];
    
    cellModel = [[SetCellModel alloc]init];
    cellModel.title      = @"清楚缓存";
    cellModel.rightTitle = @"0M";
    cellModel.cellIdentifier = SetTitleCell;
    cellModel.cellNibName    = SetTitleCell;
    cellModel.cellSelectedAction = ^(NSIndexPath *indexPath){
        [UIAlertController defauleAlertChangeInfomationWithController:self title:@"温馨提示" message:@"你确认要清除缓存吗？" canleAction:nil sureActionBlock:^(UIAlertController *alertContrller) {
            
        }];
    };
    [cellsection_1Arr addObject:cellModel];
    
    NSMutableArray *cellsection_2Arr = [NSMutableArray array];
    cellModel = [[SetCellModel alloc]init];
    cellModel.title = @"关于";
    cellModel.cellIdentifier = SetNoneCell;
    cellModel.cellNibName    = SetNoneCell;
    cellModel.cellSelectedAction = ^(NSIndexPath *indexPath){
        
//        [UIAlertController defauleAlertChangeInfomationWithController:self title:@"温馨提示" message:@"跳至关于界面" canleAction:nil sureActionBlock:^(UIAlertController *alertContrller) {
//            
//        }];
    };
    [cellsection_2Arr addObject:cellModel];
    
    NSMutableArray *cellsection_3Arr = [NSMutableArray array];
    cellModel = [[SetCellModel alloc]init];
    cellModel.cellIdentifier  = SetLoginOutCell;
    cellModel.cellNibName     = SetLoginOutCell;
    cellModel.showDetailImage = NO;
    cellModel.cellSelectedAction = ^(NSIndexPath *indexPath){
        [UIAlertController defauleAlertChangeInfomationWithController:self title:@"温馨提示" message:@"你确认要退出登录吗？" canleAction:nil sureActionBlock:^(UIAlertController *alertContrller) {
            
        }];
        
    };
    [cellsection_3Arr addObject:cellModel];
    
    NSMutableArray *cellDataArr = [NSMutableArray array];
    [cellDataArr addObject:cellsection_0Arr];
    [cellDataArr addObject:cellsection_1Arr];
    [cellDataArr addObject:cellsection_2Arr];
    [cellDataArr addObject:cellsection_3Arr];
    
    _dataArr = [cellDataArr copy];

    
    YSSettingView *settingView = [[YSSettingView alloc]initWithFrame:self.view.bounds];
    settingView.dataArray = _dataArr;
  
    [self.view addSubview:settingView];
    
    settingView.separatorColor = [UIColor purpleColor];
    settingView.backColor = [UIColor yellowColor];
}


@end
