//
//  QRCodeViewController.h
//  TOMQRCodeReader
//
//  Created by mac on 2016/10/31.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
#import "QRCost.h"
#import "QRCodeReaderView.h"

@interface QRCodeViewController : UIViewController  <QRCodeReaderViewDelegate,AVCaptureMetadataOutputObjectsDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate,UIAlertViewDelegate>
{
    QRCodeReaderView * readview;//二维码扫描对象
    
    BOOL isFirst;//第一次进入该页面
    BOOL isPush;//跳转到下一级页面
}
@property (strong, nonatomic) CIDetector *detector;

@property (nonatomic,copy) void (^rightItemAction)(UIButton *button);

- (void)alumbBtnEvent;  // 调用相册扫描对象

- (void)InitScan;      // 初始化扫描

- (void)accordingQcode:(NSString *)str; // 处理扫描结果

/**
 *  设置navigation右按钮（文字）
 *
 *  @param title 按钮文字
 */
- (void)setNavigationBarRightItemButttonTitle:(NSString *)title titleFloat:(CGFloat)font;

@end
