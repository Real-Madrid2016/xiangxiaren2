//
//  IndexTableViewCell.h
//  Village
//
//  Created by I三生有幸I on 16/8/29.
//  Copyright © 2016年 盛辰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IndexTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIView *backView;

@property (strong, nonatomic) IBOutlet UIView *backView2;

// 我家老人
@property (strong, nonatomic) IBOutlet UILabel *myOldManLabel;

// 公告板label
@property (strong, nonatomic) IBOutlet UILabel *publicBoardLabel;

// 知村事label
@property (strong, nonatomic) IBOutlet UILabel *knowVillageLabel;
@end
