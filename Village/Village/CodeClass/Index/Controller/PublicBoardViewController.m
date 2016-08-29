//
//  PublicBoardViewController.m
//  Village
//
//  Created by I三生有幸I on 16/8/29.
//  Copyright © 2016年 盛辰. All rights reserved.
//

#import "PublicBoardViewController.h"

@interface PublicBoardViewController ()
// 首页
@property (strong, nonatomic) IBOutlet UIButton *indexButton;
// 招聘
@property (strong, nonatomic) IBOutlet UIButton *recruitButton;
// 二手市场
@property (strong, nonatomic) IBOutlet UIButton *secondMarketButton;
// 好项目英文
@property (strong, nonatomic) IBOutlet UIButton *goodProjectButton;

@end

@implementation PublicBoardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"公告板";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
