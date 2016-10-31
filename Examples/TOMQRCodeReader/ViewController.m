//
//  ViewController.m
//  TOMQRCodeReader
//
//  Created by mac on 2016/10/31.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeViewController.h"
#import "MyViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)QRRead:(UIBarButtonItem *)sender {
    MyViewController * qrVC = [[MyViewController alloc] init];
    [self.navigationController pushViewController:qrVC animated:YES];
}


@end
