//
//  SetCellModel.h
//  WeiFangCredit
//
//  Created by yangsen on 16/12/8.
//  Copyright © 2016年 sitemap. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^CellDidSelectedActon)(NSIndexPath *indexPath);
typedef void(^CellContentActon)(id userData, UITableViewCell *cell);

@interface SetCellModel : NSObject

#warning Class 和 cellNibName 必有其一， cellIdentifier 不同cell不能相同
@property (assign, nonatomic) Class     cellClass;
@property (copy  , nonatomic) NSString *cellNibName;
@property (copy  , nonatomic) NSString *cellIdentifier;

// 默认 44
@property (assign, nonatomic) CGFloat cellHeight;

@property (copy  , nonatomic) NSString *title;
@property (copy  , nonatomic) NSString *rightTitle;

@property (copy  , nonatomic) NSString *leftImageName;
@property (copy  , nonatomic) NSString *rightImageName;

// 是否显示最右边详情的三角图片
@property (assign, nonatomic) BOOL showDetailImage;

@property (copy, nonatomic) CellDidSelectedActon cellSelectedAction;
@property (copy, nonatomic) CellContentActon     cellContentAction;

@end
