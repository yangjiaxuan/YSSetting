//
//  YSSettingView.m
//  YSSetting
//
//  Created by yangsen on 16/12/13.
//  Copyright © 2016年 yangsen. All rights reserved.
//

#import "YSSettingView.h"

@interface YSSettingView()<UITableViewDataSource, UITableViewDelegate>
{
    NSArray     *_realDataArray;
    UITableView *_tableView;
}
@end
@implementation YSSettingView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setUI];
    }
    return self;
}

- (void)setUI{

    UIColor *backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
    _tableView = [[UITableView alloc]initWithFrame:self.bounds style:UITableViewStyleGrouped];
    _tableView.delegate   = self;
    _tableView.dataSource = self;
    _tableView.sectionIndexColor  = backgroundColor;
    _tableView.backgroundColor    = backgroundColor;
    _tableView.sectionIndexBackgroundColor = backgroundColor;
    _tableView.sectionIndexTrackingBackgroundColor = backgroundColor;
    _tableView.tableFooterView = [[UIView alloc]init];

    [self addSubview:_tableView];
}

- (void)setDataArray:(NSArray *)dataArray{
    _dataArray = dataArray;
    if ([self.dataArray.firstObject isKindOfClass:[NSArray class]]) {
        _realDataArray = dataArray;
    }
    else{
        _realDataArray = @[dataArray];
    }
    for (NSArray *sectionArr in _realDataArray) {
        for (SetCellModel *cellModel in sectionArr) {
            if (cellModel.cellNibName.length) {
                [_tableView registerNib:[UINib nibWithNibName:cellModel.cellNibName bundle:nil] forCellReuseIdentifier:cellModel.cellIdentifier];
            }
            else{
                [_tableView registerClass:cellModel.cellClass forCellReuseIdentifier:cellModel.cellIdentifier];
            }
        }
    }
    [_tableView reloadData];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return _realDataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_realDataArray[section] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    SetCellModel *model   = _realDataArray[indexPath.section][indexPath.row];
    SettingBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:model.cellIdentifier forIndexPath:indexPath];
    cell.model = model;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SetCellModel *model = _realDataArray[indexPath.section][indexPath.row];
    if (model.cellSelectedAction) {
        model.cellSelectedAction(indexPath);
    }
    [_tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
