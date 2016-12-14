//
//  SettingBaseCell.m
//  WeiFangCredit
//
//  Created by yangsen on 16/12/12.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import "SettingBaseCell.h"

// 图片路径
#define ArrowSrcName(file) [@"SettingResource.bundle" stringByAppendingPathComponent:file]
#define ArrowFrameworkSrcName(file) [@"Frameworks/YSSeting.framework/SettingResource.bundle" stringByAppendingPathComponent:file]

@interface SettingBaseCell ()
{
    UIImageView *_detailImageView;
}
@end
@implementation SettingBaseCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setUI];
    }
    return self;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    [self setUI];
}

- (void)setUI{

    CGFloat screenW    = [UIScreen mainScreen].bounds.size.width;
    CGFloat detailIV_W = 6;
    CGFloat detailIV_H = 12;
    CGFloat detailIV_X = (screenW - detailIV_W) - 8;
    CGFloat detailIV_Y = (self.contentView.frame.size.height - detailIV_H)/2.0;
    _detailImageView = [[UIImageView alloc]initWithFrame:(CGRect){{detailIV_X, detailIV_Y},{detailIV_W, detailIV_H}}];
    _detailImageView.image = [UIImage imageNamed:ArrowSrcName(@"cellDetail.png")] ?: [UIImage imageNamed:ArrowFrameworkSrcName(@"cellDetail.png")];
    [self.contentView addSubview:_detailImageView];
}

- (void)setModel:(SetCellModel *)model{
    _model = model;
    if (model.showDetailImage) {
        _detailImageView.hidden = NO;
    }
    else{
        _detailImageView.hidden = YES;
    }
}

@end
