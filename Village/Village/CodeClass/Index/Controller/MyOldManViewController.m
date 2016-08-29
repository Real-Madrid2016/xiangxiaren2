//
//  MyOldManViewController.m
//  Village
//
//  Created by Twx on 16/8/29.
//  Copyright © 2016年 盛辰. All rights reserved.
//

#import "MyOldManViewController.h"

@interface MyOldManViewController ()

@end

@implementation MyOldManViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDictionary *dic = @{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:22]};
    self.navigationController.navigationBar.titleTextAttributes = dic;
    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
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
