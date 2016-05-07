//
//  GSBaseViewController.m
//  GSEngineeringBaseFramework
//
//  Created by 关宇琼 on 16/5/6.
//  Copyright © 2016年 GuanSir. All rights reserved.
//

#import "GSBaseViewController.h"

@implementation GSBaseViewController





- (void)viewDidLoad
{
    [super viewDidLoad];
    [self dataHandle];
    [self initUI];
    //设置HUD的样式
    [self setHUDStyle];
}

- (void)viewWillDisappear:(BOOL)animated {
    [SVProgressHUD dismiss];
    [super viewWillDisappear:animated];
}

#pragma mark - 私有方法

- (void)setHUDStyle {
    [SVProgressHUD setFont:[UIFont systemFontOfSize:13]];
    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    [SVProgressHUD setBackgroundColor:[UIColor colorWithRed:22/255.0 green:22/255.0 blue:22/255.0 alpha:0.7]];
    [SVProgressHUD setRingThickness:1.5];
}

#pragma mark - 公共方法
/**
 *  返回上一页
 */
- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}

/**
 *  返回跟视图
 */
- (void)backRootVCAction {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

/**
 *  页面布局
 */

- (void)initUI {
    self.view.backgroundColor = gs_Color_Back;
}

/**
 *  数据加载
 */

- (void)dataHandle {
    
}




@end
