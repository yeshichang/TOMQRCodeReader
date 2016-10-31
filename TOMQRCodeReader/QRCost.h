//
//  QRCost.h
//  TOMQRCodeReader
//
//  Created by mac on 2016/10/31.
//  Copyright © 2016年 mac. All rights reserved.
//

#ifndef QRCost_h
#define QRCost_h


#define DeviceMaxHeight ([UIScreen mainScreen].bounds.size.height)
#define DeviceMaxWidth ([UIScreen mainScreen].bounds.size.width)
#define widthRate DeviceMaxWidth/320
#define IOS8 ([[UIDevice currentDevice].systemVersion intValue] >= 8 ? YES : NO)

#define contentTitleColorStr @"666666" //正文颜色较深

// 图片路径
#define QRCodeSrcName [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent: @"BundleQR.bundle/Contents/Resources/"]
#define QRCodePathName(file) [QRCodeSrcName stringByAppendingPathComponent:file]

#endif /* QRCost_h */
