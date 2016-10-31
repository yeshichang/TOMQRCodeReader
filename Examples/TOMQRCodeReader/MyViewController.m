//
//  MyViewController.m
//  TOMQRCodeReader
//
//  Created by mac on 2016/10/31.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"扫描";
    
    [self setNavigationBarRightItemButttonTitle:@"相册" titleFloat:15];
    __weak MyViewController *weakSelf = self;
    self.rightItemAction = ^(UIButton *button) {
        [weakSelf alumbBtnEvent];
    };
}

#pragma mark - 扫描结果处理
- (void)accordingQcode:(NSString *)str
{
    UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"扫描结果" message:str delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
    
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
