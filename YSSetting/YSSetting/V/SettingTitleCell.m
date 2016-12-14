//
//  SettingTitleCell.m
//  WeiFangCredit
//
//  Created by yangsen on 16/12/8.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import "SettingTitleCell.h"

@interface SettingTitleCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightTitleLabel;

@end

@implementation SettingTitleCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(SetCellModel *)model{
    [super setModel:model];
    self.titleLabel.text      = model.title;
    self.rightTitleLabel.text = model.rightTitle;
}


@end
