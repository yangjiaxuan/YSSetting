//
//  SettingNoneCell.m
//  WeiFangCredit
//
//  Created by yangsen on 16/12/8.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import "SettingNoneCell.h"

@interface SettingNoneCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation SettingNoneCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(SetCellModel *)model{
    [super setModel:model];
    self.titleLabel.text = model.title;
}
@end
