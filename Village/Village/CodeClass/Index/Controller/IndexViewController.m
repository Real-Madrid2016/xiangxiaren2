//
//  IndexViewController.m
//  Village
//
//  Created by I三生有幸I on 16/8/27.
//  Copyright © 2016年 盛辰. All rights reserved.
//

#import "IndexViewController.h"
#import "IndexTableViewCell.h"
#import "PublicBoardViewController.h"
#import "KnowVillageViewController.h"
#import "MyOldManViewController.h"
@interface IndexViewController () <UITableViewDataSource, UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation IndexViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    IndexTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"IndexCell" forIndexPath:indexPath];
    [cell.backView.layer setCornerRadius:30];
    [cell.backView2.layer setCornerRadius:30];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    // 我家老人手势
    UITapGestureRecognizer *myOldManTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myOldManTapAction:)];
    cell.myOldManLabel.userInteractionEnabled = YES;
    [cell.myOldManLabel addGestureRecognizer:myOldManTap];
    
    // 公告板手势
    UITapGestureRecognizer *publicBoardTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(publicBoardTapAction:)];
    cell.publicBoardLabel.userInteractionEnabled = YES;
    [cell.publicBoardLabel addGestureRecognizer:publicBoardTap];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // 知村事手势
    UITapGestureRecognizer *knowVillageTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(knowVillageTapAction:)];
    cell.knowVillageLabel.userInteractionEnabled = YES;
    [cell.knowVillageLabel addGestureRecognizer:knowVillageTap];
    return cell;
}

#pragma mark --- 跳转我家老人页面 ---
- (void)myOldManTapAction:(UITapGestureRecognizer *)tap
{
    UIStoryboard *stoboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MyOldManViewController *myOldManVc = [stoboard instantiateViewControllerWithIdentifier:@"MyOldMan"];
    [self.navigationController pushViewController:myOldManVc animated:YES];
}

#pragma mark --- 跳转公告板页面 ---
- (void)publicBoardTapAction:(UITapGestureRecognizer *)tap
{
    UIStoryboard *stoboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    PublicBoardViewController *publicBoardVc = [stoboard instantiateViewControllerWithIdentifier:@"PublicBoard"];
    [self.navigationController pushViewController:publicBoardVc animated:YES];
}

#pragma mark --- 跳转知村事界面 ---
- (void)knowVillageTapAction:(UITapGestureRecognizer *)tap
{
    UIStoryboard *stoboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    KnowVillageViewController *knowVillageVc = [stoboard instantiateViewControllerWithIdentifier:@"KnowVillage"];
    [self.navigationController pushViewController:knowVillageVc animated:YES];
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    return 500;
//}

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
