![(logo)](http://www.yeshichang.cn/images/works/logo.png)
# TOMQRCodeReader
一个基于iOS系统API的二维码扫描小框架，继承QRCodeViewController即可进行扫描，详细请看demo

## Contents
方便调用，并支持cocoaPods，用法简单的。使用真机调试，模拟器会崩溃的。

## Examples
// 需要实现父类方法，用来调用相册中的二维码

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

// 扫描结果处理[需要实现父类的方法，用来拿到扫描结果] 

    - (void)accordingQcode:(NSString *)str {  
        [super accordingQcode:str];  
        UIAlertView * alertView = [[UIAlertView alloc]initWithTitle:@"扫描结果" message:str delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];  
        [alertView show];  
    }
