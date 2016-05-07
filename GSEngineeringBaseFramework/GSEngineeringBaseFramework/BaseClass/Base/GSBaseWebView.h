//
//  GSBaseWebView.h
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseViewController.h"

@interface GSBaseWebView : GSBaseViewController

@property(copy ,nonatomic) NSString *urlStr;

@property(assign,nonatomic) BOOL isHtmlString;

@end
