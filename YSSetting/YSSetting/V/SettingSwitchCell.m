//
//  SettingSwitchCell.m
//  WeiFangCredit
//
//  Created by yangsen on 16/12/12.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import "SettingSwitchCell.h"

@implementation SettingSwitchCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(SetCellModel *)model{
    [super setModel:model];
    
}

- (IBAction)switchActionDo:(UISwitch *)sender {
    if (self.model.cellContentAction) {
        self.model.cellContentAction(@(sender.isOn), self);
    }
}

@end
