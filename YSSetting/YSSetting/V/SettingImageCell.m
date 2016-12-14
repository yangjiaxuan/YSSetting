//
//  SettingImageCell.m
//  WeiFangCredit
//
//  Created by yangsen on 16/12/8.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import "SettingImageCell.h"

@interface SettingImageCell()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end
@implementation SettingImageCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(SetCellModel *)model{
    [super setModel:model];
    self.titleLabel.text = model.title;
    
}

@end
